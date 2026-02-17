#nullable enable

using System;
using System.IO;
using System.Text;
using System.Diagnostics;
using System.Threading;
using System.Collections.Generic;
using Sandbox;

sealed class Builder : IDisposable {
    const int BuildDebounceMs = 250;
    volatile bool disposed;

    int port;
    string haxeCommand;
    bool building, pending, pendingRelease, pendingServerRestart;
    readonly object buildLock = new();
    readonly List<Action<bool>> pendingCallbacks = new();
    string? lastHxml;

    ProcessStartInfo startInfo;
    ProcessStartInfo serverInfo;
    Timer? timer;
    Watcher codeWatcher;
    Process? server;

    public bool enabled;

    public Builder(int port, string haxeCommand) {
        this.port = port is > 0 and <= 65535 ? port : 6060;
        this.haxeCommand = string.IsNullOrWhiteSpace(haxeCommand) ? "haxe" : haxeCommand.Trim();

        startInfo = CreateBuildStartInfo();
        serverInfo = CreateServerStartInfo();

        codeWatcher = new Watcher(Path.Combine(HaxeBox.root, "code"), ["*.hx"], Queue);
        StartServer();
        HaxeBox.logger.Info("Builder created");
    }

    public void ApplySettings(int port, string haxeCommand) {
        var normalizedPort = port is > 0 and <= 65535 ? port : 6060;
        var normalizedCommand = string.IsNullOrWhiteSpace(haxeCommand) ? "haxe" : haxeCommand.Trim();
        var restartServer = this.port != normalizedPort || !string.Equals(this.haxeCommand, normalizedCommand, StringComparison.Ordinal);

        this.port = normalizedPort;
        this.haxeCommand = normalizedCommand;
        startInfo = CreateBuildStartInfo();
        serverInfo = CreateServerStartInfo();

        if (!restartServer || disposed)
            return;

        bool restartNow;
        lock (buildLock) {
            restartNow = !building;
            if (!restartNow)
                pendingServerRestart = true;
        }

        if (restartNow)
            StartServer();
    }

    ProcessStartInfo CreateBuildStartInfo() {
        return new ProcessStartInfo {
            FileName = haxeCommand,
            Arguments = $"--connect {port} build.hxml",
            WorkingDirectory = HaxeBox.root,
            UseShellExecute = false,
            CreateNoWindow = true,
            RedirectStandardOutput = true,
            RedirectStandardError = true,
            StandardOutputEncoding = Encoding.UTF8,
            StandardErrorEncoding = Encoding.UTF8
        };
    }

    ProcessStartInfo CreateServerStartInfo() {
        return new ProcessStartInfo {
            FileName = haxeCommand,
            Arguments = $"--wait {port}",
            WorkingDirectory = HaxeBox.root,
            UseShellExecute = false,
            CreateNoWindow = true,
            RedirectStandardOutput = true,
            RedirectStandardError = true,
            StandardOutputEncoding = Encoding.UTF8,
            StandardErrorEncoding = Encoding.UTF8
        };
    }

    public void Pause() {
        if (!enabled) 
            return;
        enabled = false;

        codeWatcher.Stop();
        HaxeBox.logger.Info("Hotload paused");
    }

    public void Resume() {
        if (enabled) 
            return;
        enabled = true;

        codeWatcher.Start();
        HaxeBox.logger.Info("Hotload resumed");
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

    public void BuildAsync(bool isRelease, Action<bool>? onCompleted) {
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
            bool restartServer = false;
            lock (buildLock) {
                building = false;
                if (pendingServerRestart) {
                    pendingServerRestart = false;
                    restartServer = true;
                }

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

            if (restartServer && !disposed)
                StartServer();

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
        Toaster.CompileStarted("Haxe", "Building...");

        var resumeWatcher = enabled;
        if (resumeWatcher)
            codeWatcher.Stop();

        try {
            var sb = new StringBuilder(2048);

            sb.AppendLine("--cs code/__haxe__")
              .AppendLine("-cp code")
              .AppendLine($"-cp {HaxeBox.path}/haxe/haxebox")
              .AppendLine($"-cp {HaxeBox.path}/haxe/extern")
              .AppendLine("--macro include('', true, [], ['code'], true)")
              .AppendLine("--macro HaxeBoxMacro.init()");
            foreach (var library in HaxeBox.GetLibraries())
                sb.AppendLine("--library " + library);

            sb.AppendLine("# config")
              .AppendLine("-dce no");
            if (HaxeBox.config.release || isRelease)
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

            var process = Process.Start(startInfo);
            if (process == null) {
                HaxeBox.logger.Error("Haxe build start failed");
                return false;
            }

            List<string> diagnostics = [];
            process.OutputDataReceived += (_, e) => { if (!string.IsNullOrWhiteSpace(e.Data)) diagnostics.Add(e.Data); };
            process.ErrorDataReceived += (_, e) => { if (!string.IsNullOrWhiteSpace(e.Data)) diagnostics.Add(e.Data); };

            process.BeginOutputReadLine();
            process.BeginErrorReadLine();
            
            process.WaitForExit();
            if (process.ExitCode != 0) {
                Toaster.CompileFailed("Haxe", diagnostics, "Build failed");
                return false;
            }

        } catch (Exception ex) {
            Toaster.CompileFailed("Haxe", [ex.Message], "Build failed");
            return false;
        } finally {
            if (!disposed && resumeWatcher && enabled)
                codeWatcher.Start();
        }
        
        Toaster.RemoveCurrent();
        HaxeBox.logger.Info("...completed");

        return true;
    }

    void StartServer() {
        if (disposed)
            return;

        StopServer();

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

        try {
            if (!server.HasExited)
                server.Kill();
        } catch {
            // ignore: process may already be gone
        }

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
