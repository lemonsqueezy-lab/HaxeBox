#nullable enable
using System;
using System.IO;
using System.Text;
using System.Diagnostics;
using System.Threading;
using System.Threading.Tasks;
using System.Collections.Generic;
using Sandbox;

sealed class Builder : IDisposable {
    static string[] ignore = ["obj", "__haxe__", "properties"];
    const int BuildDebounceMs = 250;
    volatile bool disposed;

    int port;
    bool building, pending, pendingRelease;
    readonly object buildLock = new();
    readonly List<Action<bool>> pendingCallbacks = new();
    string? lastHxml;

    Timer? timer;
    Watcher codeWatcher;
    Process? server;

    public bool enabled;

    public Builder(int port) {
        this.port = port;

        codeWatcher = new Watcher(Path.Combine(HaxeBox.root, "code"), ["*.hx"], Queue);
        StartServer();
        HaxeBox.logger.Info("Builder created");
    }

    public void Pause() {
        if (!enabled) 
            return;
        enabled = false;

        codeWatcher.Stop();
        HaxeBox.logger.Info("Builder paused");
    }

    public void Resume() {
        if (enabled) 
            return;
        enabled = true;

        codeWatcher.Start();
        HaxeBox.logger.Info("Builder resumed");
        BuildAsync();
    }

    public void Dispose() {
        disposed = true;
        enabled = false;

        timer?.Dispose();
        timer = null;
        codeWatcher.Dispose();
        StopServer();

        HaxeBox.logger.Info("Builder stopped");
    }

    public void BuildAsync() {
        BuildAsync(false, null);
    }

    public void BuildAsync(Action<bool> onCompleted) {
        BuildAsync(true, onCompleted);
    }

    public void BuildAsync(bool isRelease, Action<bool> onCompleted) {
        ThreadPool.QueueUserWorkItem(_ => {
            if (disposed) {
                onCompleted?.Invoke(false);
                return;
            }

            lock (buildLock) {
                if (building) { 
                    pending = true; 
                    pendingRelease |= isRelease;
                    if (onCompleted != null)
                        pendingCallbacks.Add(onCompleted);
                    return; 
                }
                building = true;
            }

            var ok = Build(isRelease);
            onCompleted?.Invoke(ok);

            bool runPending = false;
            bool runPendingRelease = false;
            List<Action<bool>>? runPendingCallbacks = null;
            lock (buildLock) {
                building = false;
                if (pending) {
                    runPending = true;
                    runPendingRelease = pendingRelease;
                    if (pendingCallbacks.Count > 0) {
                        runPendingCallbacks = new List<Action<bool>>(pendingCallbacks);
                        pendingCallbacks.Clear();
                    }
                    pending = false;
                    pendingRelease = false;
                }
            }

            if (runPending) 
                BuildAsync(runPendingRelease, ok2 => {
                    if (runPendingCallbacks == null)
                        return;
                    foreach (var cb in runPendingCallbacks)
                        cb(ok2);
                });
        });
    }

    public bool Build(bool isRelease = false) {
        HaxeBox.logger.Info("Building...");
        var resumeWatcher = enabled;
        if (resumeWatcher)
            codeWatcher.Stop();

        try {
            var sb = new StringBuilder(2048).AppendLine("--cs out");

            sb.AppendLine("# paths")
              .AppendLine($"-cp {HaxeBox.path}/haxe/haxebox")
              .AppendLine($"-cp {HaxeBox.path}/haxe/extern")
              .AppendLine("--macro HaxeBoxMacro.init()");

            sb.AppendLine("# config")
              .AppendLine("-dce no");
            if (HaxeBox.config.release)
                sb.AppendLine("-D no-traces")
                  .AppendLine("-D real-position")
                  .AppendLine("-D analyzer-optimize");
            else
                sb.AppendLine("--no-opt")
                  .AppendLine("-debug")
                  .AppendLine("-D no-inline");
            if (HaxeBox.config.whitelist) 
                sb.AppendLine("-D WHITELIST");
            sb.AppendLine($"-D PROJECT_PATH={HaxeBox.root}")
              .AppendLine($"-D HAXEBOX_PATH={HaxeBox.path}")
              .AppendLine("-D no-compilation")
              .AppendLine($"-D source-header=Generated with HaxeBox for {Game.Ident}");
            foreach (var s in HaxeBox.config.symbols)
                if (!s.Equals("DEBUG", StringComparison.OrdinalIgnoreCase))
                    sb.AppendLine("-D " + s);

            var hxml = sb.ToString();
            if (!string.Equals(lastHxml, hxml, StringComparison.Ordinal)) {
                File.WriteAllText(Path.Combine(HaxeBox.root, "build.hxml"), hxml);
                lastHxml = hxml;
            }

            var process = new Process();
            process.StartInfo = new ProcessStartInfo {
                FileName = "haxe",
                Arguments = $"--connect {port} build.hxml",
                WorkingDirectory = HaxeBox.root,
                UseShellExecute = false,
                CreateNoWindow = true,
                RedirectStandardOutput = true,
                RedirectStandardError = true,
                StandardOutputEncoding = Encoding.UTF8,
                StandardErrorEncoding = Encoding.UTF8
            };
            if (!process.Start()) {
                HaxeBox.logger.Error("Haxe build start failed");
                return false;
            }

            process.OutputDataReceived += (_, e) => { if (!string.IsNullOrWhiteSpace(e.Data)) HaxeBox.logger.Info(e.Data); };
            process.ErrorDataReceived += (_, e) => { if (!string.IsNullOrWhiteSpace(e.Data)) HaxeBox.logger.Error(e.Data); };

            process.BeginOutputReadLine();
            process.BeginErrorReadLine();
            
            process.WaitForExit();
            if (process.ExitCode != 0)
                return false;

        } catch (Exception ex) {
            HaxeBox.logger.Error(ex.ToString());
            return false;
        } finally {
            if (!disposed && resumeWatcher && enabled)
                codeWatcher.Start();

            HaxeBox.logger.Info("...completed");
        }
        return true;
    }

    void StartServer() {
        StopServer();

        var serverInfo = new ProcessStartInfo {
            FileName = "haxe",
            Arguments = $"--wait {port}",
            WorkingDirectory = HaxeBox.root,
            UseShellExecute = false,
            RedirectStandardOutput = true,
            RedirectStandardError = true,
            CreateNoWindow = true,
            StandardOutputEncoding = Encoding.UTF8,
            StandardErrorEncoding = Encoding.UTF8
        };
        server = Process.Start(serverInfo);

        if (server == null) {
            HaxeBox.logger.Error("Compilation server start failed");
            return;
        }

        server.OutputDataReceived += (_, e) => { if (!string.IsNullOrWhiteSpace(e.Data)) HaxeBox.logger.Info(e.Data); };
        server.ErrorDataReceived  += (_, e) => { if (!string.IsNullOrWhiteSpace(e.Data)) HaxeBox.logger.Error(e.Data); };

        server.BeginOutputReadLine();
        server.BeginErrorReadLine();

        HaxeBox.logger.Info("Compilation server started");
    }

    void StopServer() {
        if (server == null)
            return;
            
        server.Kill();
        server = null;
        HaxeBox.logger.Info("Compilation server stopped");
    }

    void Queue(string path) {
        if (disposed || !enabled) 
            return;
        if (!string.IsNullOrEmpty(path) && path.Contains("__haxe__", StringComparison.OrdinalIgnoreCase)) 
            return;

        timer ??= new Timer(_ => BuildAsync(), null, Timeout.Infinite, Timeout.Infinite);
        timer.Change(BuildDebounceMs, Timeout.Infinite);
    }
}
