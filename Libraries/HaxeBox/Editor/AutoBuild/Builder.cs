#nullable enable

using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Text;
using System.Threading;

sealed class AutoBuilder : IDisposable
{
    private WatcherService? genWatcher;
    private List<WatcherService> srcWatchers = new List<WatcherService>();
    private Timer? timer;

    public bool enabled;
    private bool building;
    private bool pending;
    private string[] srcs = ["code", "editor"];

    private const int DebounceMs = 500;

    private readonly List<string> defines =
    [
        "no-traces",
        "no-compilation",
        "real-position",
        "erase-generics",
        "analyzer-optimize"
    ];

    public void Start()
    {
        if (enabled)
            return;

        enabled = true;

        var root = HaxeBox.projectRoot;

        genWatcher = new WatcherService(Path.Combine(root, "__haxe__"), Queue);
        genWatcher.Start();

        srcWatchers = [];
        foreach (string src in srcs)
        {
            var watcher = new WatcherService(Path.Combine(root, src), Queue);
            watcher.Start();
            srcWatchers.Add(watcher);
        }

        HaxeBox.logger.Info("Auto-build enabled");
    }

    public void Dispose()
    {
        enabled = false;

        timer?.Dispose();
        timer = null;

        genWatcher?.Dispose();
        genWatcher = null;

        while (srcWatchers.Count > 0)
        {
            var watcher = srcWatchers[0];
            watcher.Dispose();
            srcWatchers.Remove(watcher);
        }

        HaxeBox.logger.Info("Auto-build disabled");
        GC.SuppressFinalize(this);
    }

    private void Queue(string path)
    {
        if (!enabled || path.Contains("__haxe__"))
            return;

        timer ??= new Timer(_ => Build(), null, Timeout.Infinite, Timeout.Infinite);
        timer.Change(DebounceMs, Timeout.Infinite);
    }

    public void Build()
    {
        if (!enabled)
            return;

        if (building)
        {
            pending = true;
            return;
        }

        building = true;

        try
        {
            var root = HaxeBox.projectRoot;
            var hxml = new StringBuilder(2048)
                .AppendLine("-cp __haxe__")
                .AppendLine("--macro AttributeMacro.init()");
            foreach (var d in defines)
                hxml.AppendLine("-D " + d);
            hxml.AppendLine("--each");

            foreach (string src in srcs)
            {
                hxml.AppendLine($"-cp {src}");
                hxml.AppendLine($"-cs {src}/__haxe__");

                var dir = Path.Combine(root, src);
                
                foreach (var mod in Directory.EnumerateFiles(dir, "*.hx"))
                    hxml.AppendLine(Path.GetFileName(mod));

                foreach (var pak in Directory.EnumerateDirectories(dir))
                {
                    var name = Path.GetFileName(pak);
                    if (string.Equals(name, "__haxe__", StringComparison.OrdinalIgnoreCase) ||
                        string.Equals(name, "Properties", StringComparison.OrdinalIgnoreCase))
                        continue;
                    hxml.AppendLine($"--macro include('{name}', true)");
                }

                hxml.AppendLine("--next");
            }

            File.WriteAllText(Path.Combine(root, "build.hxml"), hxml.ToString());

            var psi = new ProcessStartInfo
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
            };

            using var p = Process.Start(psi);
            if (p == null)
            {
                HaxeBox.logger.Error("Failed to start Haxe process (Process.Start returned null).");
                return;
            }

            var stdout = p.StandardOutput.ReadToEnd();
            var stderr = p.StandardError.ReadToEnd();
            p.WaitForExit();

            if (!string.IsNullOrWhiteSpace(stdout))
                HaxeBox.logger.Info(stdout);

            if (!string.IsNullOrWhiteSpace(stderr))
                HaxeBox.logger.Error(stderr);
        }
        catch (Exception ex)
        {
            HaxeBox.logger.Error($"Exception: {ex}");
        }
        finally
        {
            building = false;

            if (pending)
            {
                pending = false;
                Queue("");
            }
        }
    }
}
