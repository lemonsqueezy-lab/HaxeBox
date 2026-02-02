#nullable enable
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Text;
using System.Threading;

sealed class AutoBuilder : IDisposable
{
    public bool enabled;

    const int DebounceMs = 300;

    static readonly string[] Srcs = ["code", "editor"];
    static readonly string[] Defines =
    [
        "no-traces","no-compilation","real-position","erase-generics","analyzer-optimize"
    ];

    WatcherService? genWatcher;
    readonly List<WatcherService> watchers = new();
    Timer? timer;

    int port;
    bool building, pending;
    Process? server;

    public void Start(int port)
    {
        if (enabled) return;
        enabled = true; this.port = port;

        var root = HaxeBox.projectRoot;

        genWatcher = new WatcherService(Path.Combine(root, "__haxe__"), Queue);
        genWatcher.Start();

        watchers.Clear();
        foreach (var s in Srcs)
        {
            var w = new WatcherService(Path.Combine(root, s), Queue);
            w.Start();
            watchers.Add(w);
        }

        StartServer();
        HaxeBox.logger.Info("Auto-build enabled");
    }

    public void Dispose()
    {
        enabled = false;
        timer?.Dispose(); timer = null;

        genWatcher?.Dispose(); genWatcher = null;

        foreach (var w in watchers) w.Dispose();
        watchers.Clear();

        StopServer();
        HaxeBox.logger.Info("Auto-build disabled");
        GC.SuppressFinalize(this);
    }

    void StartServer()
    {
        StopServer();

        server = Process.Start(new ProcessStartInfo
        {
            FileName = "haxe",
            Arguments = $"--wait {port}",
            WorkingDirectory = HaxeBox.projectRoot,
            UseShellExecute = false,
            RedirectStandardOutput = true,
            RedirectStandardError = true,
            CreateNoWindow = true,
            StandardOutputEncoding = Encoding.UTF8,
            StandardErrorEncoding = Encoding.UTF8
        });

        if (server == null) { HaxeBox.logger.Error("Haxe server start failed"); return; }

        server.OutputDataReceived += (_, e) => { if (!string.IsNullOrWhiteSpace(e.Data)) HaxeBox.logger.Info(e.Data); };
        server.ErrorDataReceived  += (_, e) => { if (!string.IsNullOrWhiteSpace(e.Data)) HaxeBox.logger.Error(e.Data); };
        server.BeginOutputReadLine();
        server.BeginErrorReadLine();
    }

    void StopServer()
    {
        if (server == null) return;
        try { if (!server.HasExited) { server.Kill(true); server.WaitForExit(1000); } }
        catch { }
        server.Dispose(); server = null;
    }

    public void Build()
    {
        if (!enabled) return;
        if (building) { pending = true; return; }
        building = true;

        try
        {
            var root = HaxeBox.projectRoot;
            File.WriteAllText(Path.Combine(root, "build.hxml"), MakeHxml(root, port));

            using var p = Process.Start(new ProcessStartInfo
            {
                FileName = "haxe",
                Arguments = "build.hxml",
                WorkingDirectory = root,
                UseShellExecute = false,
                RedirectStandardOutput = true,
                RedirectStandardError = true,
                CreateNoWindow = true,
                StandardOutputEncoding = Encoding.UTF8,
                StandardErrorEncoding = Encoding.UTF8
            });

            if (p == null) { HaxeBox.logger.Error("Haxe build start failed"); return; }

            var o = p.StandardOutput.ReadToEnd();
            var e = p.StandardError.ReadToEnd();
            p.WaitForExit();

            if (!string.IsNullOrWhiteSpace(o)) HaxeBox.logger.Info(o);
            if (!string.IsNullOrWhiteSpace(e)) HaxeBox.logger.Error(e);
        }
        catch (Exception ex) { HaxeBox.logger.Error(ex.ToString()); }
        finally
        {
            building = false;
            if (pending) { pending = false; Queue(""); }
        }
    }

    static string MakeHxml(string root, int port)
    {
        var sb = new StringBuilder(2048)
            .AppendLine("-cp __haxe__")
            .AppendLine("--macro AttributeMacro.init()")
            .AppendLine($"--connect {port}");

        foreach (var d in Defines) sb.AppendLine("-D " + d);
        sb.AppendLine("--each");

        foreach (var src in Srcs)
        {
            sb.AppendLine($"-cp {src}")
              .AppendLine($"-cs {src}/__haxe__");

            var dir = Path.Combine(root, src);

            foreach (var f in Directory.EnumerateFiles(dir, "*.hx", SearchOption.TopDirectoryOnly))
                sb.AppendLine(Path.GetFileName(f));

            foreach (var p in Directory.EnumerateDirectories(dir, "*", SearchOption.TopDirectoryOnly))
            {
                var name = Path.GetFileName(p);
                if (name.Equals("__haxe__", StringComparison.OrdinalIgnoreCase) ||
                    name.Equals("Properties", StringComparison.OrdinalIgnoreCase))
                    continue;

                sb.AppendLine($"--macro include('{name}', true)");
            }

            sb.AppendLine("--next");
        }

        return sb.ToString();
    }

    void Queue(string path)
    {
        if (!enabled) return;
        if (!string.IsNullOrEmpty(path) && path.Contains("__haxe__", StringComparison.OrdinalIgnoreCase)) return;

        timer ??= new Timer(_ => Build(), null, Timeout.Infinite, Timeout.Infinite);
        timer.Change(DebounceMs, Timeout.Infinite);
    }
}
