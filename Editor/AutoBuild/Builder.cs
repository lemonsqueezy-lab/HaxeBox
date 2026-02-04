#nullable enable
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Text;
using System.Threading;
using Sandbox;

sealed class Builder : IDisposable
{
    static string[] ignore = ["obj", "__haxe__", "properties"];

    volatile bool disposed;

    int port;
    bool building, pending;

    Timer? timer;
    Watcher watcher;
    Process? server;
    DataReceivedEventHandler? serverOutHandler;
    DataReceivedEventHandler? serverErrHandler;

    public bool enabled;

    public Builder(int port) {
        this.port = port;
        watcher = new Watcher(Path.Combine(Project.Current.GetRootPath(), "code"), Queue);

        StartServer();
        HaxeBox.logger.Info("Builder created");
    }

    public void Pause()
    {
        if (!enabled) 
            return;
        enabled = false;

        watcher.Stop();
        HaxeBox.logger.Info("Builder paused");
    }

    public void Resume()
    {
        if (enabled) 
            return;
        enabled = true;

        watcher.Start();
        HaxeBox.logger.Info("Builder resumed");
    }

    public void Dispose()
    {
        disposed = true;
        enabled = false;

        timer?.Dispose();
        timer = null;

        watcher.Dispose();

        StopServer();

        HaxeBox.logger.Info("Builder stopped");
    }

    public void Build()
    {
        if (disposed) return;
        if (building) { pending = true; return; }
        building = true;

        try
        {
            var project = Project.Current;
            var root = project.GetRootPath();
            var cfg = project.Config.GetMetaOrDefault(
                "Compiler",
                new Compiler.Configuration()
            );
            var dir = Path.Combine(root, "code");
            var outDir = Path.Combine(dir, "__haxe__");
            var whitelist = !project.Config.IsStandaloneOnly;

            Directory.CreateDirectory(outDir);

            var sb = new StringBuilder(2048)
                .AppendLine("-cp code")
                .AppendLine($"-cp {HaxeBox.path}/haxe/macro")
                .AppendLine($"-cp {HaxeBox.path}/haxe/extern")
                .AppendLine("-cs code/__haxe__")
                .AppendLine("--macro HaxeBoxMacro.init()")
                .AppendLine($"--connect {port}")
                .AppendLine("");
            if (cfg.ReleaseMode == Compiler.ReleaseMode.Release)
                sb.AppendLine("-dce full")
                  .AppendLine("-D analyzer-optimize");
            else
                sb.AppendLine("--no-opt")
                  .AppendLine("-debug")
                  .AppendLine("-dce no")
                  .AppendLine("-D no-inline")
                  .AppendLine("-D keep-old-output");
                
            if (whitelist) 
                sb.AppendLine("-D WHITELIST");

            sb.AppendLine("-D no-traces")
              .AppendLine("-D no-compilation")
              .AppendLine("-D real-position");
            foreach (var s in cfg.GetPreprocessorSymbols())
                if (!s.Equals("DEBUG", StringComparison.OrdinalIgnoreCase))
                    sb.AppendLine("-D " + s);

            sb.AppendLine("");
            
            foreach (string f in Directory.EnumerateFiles(dir, "*.hx", SearchOption.TopDirectoryOnly))
                sb.AppendLine(Path.GetFileNameWithoutExtension(f));
            foreach (string p in Directory.EnumerateDirectories(dir, "*", SearchOption.TopDirectoryOnly)) {
                var name = Path.GetFileName(p);
                if (ignore.Contains(name, StringComparer.OrdinalIgnoreCase))
                    continue;
                sb.AppendLine($"--macro include(\"{name}\", true)");
            }

            File.WriteAllText(Path.Combine(root, "build.hxml"), sb.ToString());

            using var process = Process.Start(new ProcessStartInfo
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

            if (process == null) { 
                HaxeBox.logger.Error("Haxe build start failed");
                return;
            }

            var o = process.StandardOutput.ReadToEnd();
            var e = process.StandardError.ReadToEnd();
            process.WaitForExit();
            if (!string.IsNullOrWhiteSpace(o)) HaxeBox.logger.Info(o);
            if (!string.IsNullOrWhiteSpace(e)) HaxeBox.logger.Error(e);
            
            if (whitelist)
                PatchWhitelist(Path.Combine(HaxeBox.path, "haxe", "src"), Path.Combine(root, "code", "__haxe__", "src"));
        }
        catch (Exception ex) { HaxeBox.logger.Error(ex.ToString()); }
        finally
        {
            building = false;
            if (pending) { pending = false; Queue(""); }
        }
    }

    void StartServer()
    {
        StopServer();

        server = Process.Start(new ProcessStartInfo
        {
            FileName = "haxe",
            Arguments = $"--wait {port}",
            WorkingDirectory = Project.Current.GetRootPath(),
            UseShellExecute = false,
            RedirectStandardOutput = true,
            RedirectStandardError = true,
            CreateNoWindow = true,
            StandardOutputEncoding = Encoding.UTF8,
            StandardErrorEncoding = Encoding.UTF8
        });

        if (server == null)
        {
            HaxeBox.logger.Error("Compilation server start failed");
            return;
        }

        serverOutHandler = (_, e) =>
        {
            if (!string.IsNullOrWhiteSpace(e.Data))
                HaxeBox.logger.Info(e.Data);
        };

        serverErrHandler = (_, e) =>
        {
            if (!string.IsNullOrWhiteSpace(e.Data))
                HaxeBox.logger.Error(e.Data);
        };

        server.OutputDataReceived += serverOutHandler;
        server.ErrorDataReceived  += serverErrHandler;

        server.BeginOutputReadLine();
        server.BeginErrorReadLine();

        HaxeBox.logger.Info("Compilation server started");
    }

    void StopServer()
    {
        if (server == null)
            return;
            
        server.Kill();
        server = null;
        HaxeBox.logger.Info("Compilation server stopped");
    }

    void Queue(string path)
    {
        if (disposed) return;
        if (!enabled) return;
        if (!string.IsNullOrEmpty(path) && path.Contains("__haxe__", StringComparison.OrdinalIgnoreCase)) return;

        timer ??= new Timer(_ => Build(), null, Timeout.Infinite, Timeout.Infinite);
        timer.Change(500, Timeout.Infinite);
    }

    public static void PatchWhitelist(string src, string tgt)
    {
        if (!Directory.Exists(src) || !Directory.Exists(tgt))
            return;

        var tgtDir = new DirectoryInfo(tgt);

        foreach (var tgtFile in tgtDir.GetFiles())
        {
            var srcFilePath = Path.Combine(src, tgtFile.Name);
            if (File.Exists(srcFilePath))
                File.Copy(srcFilePath, tgtFile.FullName, true);
        }

        foreach (var tgtSubDir in tgtDir.GetDirectories())
            PatchWhitelist(Path.Combine(src, tgtSubDir.Name), tgtSubDir.FullName);
    }
}
