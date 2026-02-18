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
    string srcPath;
    string outPath;
    string outPathAbs;
    string[] exclude;
    bool building, pending, pendingRelease;
    readonly object buildLock = new();
    readonly object processLock = new();
    readonly List<Action<bool>> pendingCallbacks = new();

    ProcessStartInfo startInfo;
    ProcessStartInfo serverInfo;
    Timer? timer;
    Watcher codeWatcher;
    Process? server;
    Process? buildProcess;

    public bool enabled;

    public Builder(int port, string haxeCommand, string srcPath, string outPath, string[] exclude) {
        this.port = port is > 0 and <= 65535 ? port : 6060;
        this.haxeCommand = string.IsNullOrWhiteSpace(haxeCommand) ? "haxe" : haxeCommand.Trim();
        this.srcPath = NormalizePath(srcPath, "code");
        this.outPath = NormalizePath(outPath, "code/__haxe__");
        this.outPathAbs = Path.GetFullPath(Path.Combine(HaxeBox.root, this.outPath));
        this.exclude = exclude;

        startInfo = CreateBuildStartInfo();
        serverInfo = CreateServerStartInfo();

        codeWatcher = CreateCodeWatcher(this.srcPath);
        StartServer();
        HaxeBox.logger.Info("Builder created");
    }

    public void ApplySettings(int port, string haxeCommand, string srcPath, string outPath, string[] exclude) {
        if (disposed)
            return;

        var normalizedPort = port is > 0 and <= 65535 ? port : 6060;
        var normalizedCommand = string.IsNullOrWhiteSpace(haxeCommand) ? "haxe" : haxeCommand.Trim();
        var normalizedSrcPath = NormalizePath(srcPath, "code");
        var normalizedOutPath = NormalizePath(outPath, "code/__haxe__");
        var restartServer = this.port != normalizedPort || !string.Equals(this.haxeCommand, normalizedCommand, StringComparison.Ordinal);
        var recreateWatcher = !string.Equals(this.srcPath, normalizedSrcPath, StringComparison.OrdinalIgnoreCase);

        this.port = normalizedPort;
        this.haxeCommand = normalizedCommand;
        this.srcPath = normalizedSrcPath;
        this.outPath = normalizedOutPath;
        this.outPathAbs = Path.GetFullPath(Path.Combine(HaxeBox.root, this.outPath));
        this.exclude = exclude;
        startInfo = CreateBuildStartInfo();
        serverInfo = CreateServerStartInfo();
        if (recreateWatcher)
            RecreateWatcher();

        if (restartServer)
            StartServer();
    }

    string NormalizePath(string? path, string fallback) {
        var normalized = path?.Trim() ?? "";
        if (string.IsNullOrWhiteSpace(normalized))
            normalized = fallback;

        return normalized.Replace('\\', '/').Trim('/');
    }

    Watcher CreateCodeWatcher(string relativePath) {
        var fullPath = Path.Combine(HaxeBox.root, relativePath);
        Directory.CreateDirectory(fullPath);
        return new Watcher(fullPath, ["*.hx"], Queue);
    }

    void RecreateWatcher() {
        var wasEnabled = enabled;
        codeWatcher.Dispose();
        codeWatcher = CreateCodeWatcher(srcPath);
        if (wasEnabled)
            codeWatcher.Start();
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
        StopBuildProcess();
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
        Toaster.CompileStarted("Haxe", "Building...");

        var resumeWatcher = enabled;
        Process? process = null;
        if (resumeWatcher)
            codeWatcher.Stop();

        try {
            var includeIgnore = BuildHaxeArray(exclude);
            var includeClassPaths = BuildHaxeArray([srcPath]);
            var hxml = new StringBuilder(2048);
            hxml.AppendLine($"--cs {outPath}")
                .AppendLine($"-cp {srcPath}")
                .AppendLine($"-cp {HaxeBox.path}/haxe/haxebox")
                .AppendLine($"-cp {HaxeBox.path}/haxe/extern")
                .AppendLine($"--macro include('', true, {includeIgnore}, {includeClassPaths}, true)")
                .AppendLine("--macro HaxeBoxMacro.init()");
            foreach (var library in HaxeBox.GetLibraries())
                hxml.AppendLine("-lib " + library);

            hxml.AppendLine("# config")
                .AppendLine("-dce no");
            if (HaxeBox.config.release || isRelease)
                hxml.AppendLine("-D no-traces")
                    .AppendLine("-D real-position")
                    .AppendLine("-D analyzer-optimize");
            else
                hxml.AppendLine("--no-opt")
                    .AppendLine("-debug")
                    .AppendLine("-D no-inline");
            if (HaxeBox.config.whitelist) 
                hxml.AppendLine("-D WHITELIST");
            hxml.AppendLine($"-D PROJECT_PATH={HaxeBox.root}")
                .AppendLine($"-D HAXEBOX_PATH={HaxeBox.path}")
                .AppendLine($"-D SOURCES_PATH={srcPath}")
                .AppendLine($"-D SOURCES_EXCL={string.Join(";", exclude)}")
                .AppendLine("-D no-compilation")
                .AppendLine($"-D source-header=Generated with HaxeBox for {Game.Ident}");
            foreach (var s in HaxeBox.config.symbols)
                if (!s.Equals("DEBUG", StringComparison.OrdinalIgnoreCase))
                    hxml.AppendLine("-D " + s);

            File.WriteAllText(Path.Combine(HaxeBox.root, "build.hxml"), hxml.ToString());

            process = Process.Start(startInfo);
            if (process == null) {
                HaxeBox.logger.Error("Haxe build start failed");
                return false;
            }

            lock (processLock)
                buildProcess = process;

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
            lock (processLock) {
                if (ReferenceEquals(buildProcess, process))
                    buildProcess = null;
            }
            process?.Dispose();

            if (!disposed && resumeWatcher && enabled)
                codeWatcher.Start();
        }
        
        Toaster.RemoveCurrent();

        return true;
    }

    static string BuildHaxeArray(IEnumerable<string> items) {
        var sb = new StringBuilder("[");
        var first = true;
        foreach (var item in items) {
            if (string.IsNullOrWhiteSpace(item))
                continue;

            if (!first)
                sb.Append(", ");
            first = false;
            sb.Append('\'')
                .Append(item.Replace("\\", "\\\\").Replace("'", "\\'"))
                .Append('\'');
        }
        sb.Append(']');
        return sb.ToString();
    }

    void StartServer() {
        if (disposed)
            return;

        StopServer();

        var p = Process.Start(serverInfo);
        if (p == null) {
            HaxeBox.logger.Error("Compilation server start failed");
            return;
        }

        if (disposed) {
            try {
                if (!p.HasExited)
                    p.Kill();
            } catch {
                // ignore
            }
            p.Dispose();
            return;
        }

        lock (processLock)
            server = p;

        p.OutputDataReceived += (_, e) => { if (!string.IsNullOrWhiteSpace(e.Data)) HaxeBox.logger.Info(e.Data); };
        p.ErrorDataReceived  += (_, e) => { if (!string.IsNullOrWhiteSpace(e.Data)) HaxeBox.logger.Error(e.Data); };

        p.BeginOutputReadLine();
        p.BeginErrorReadLine();

        HaxeBox.logger.Info("Compilation server started");
    }

    void StopServer() {
        Process? p;
        lock (processLock) {
            p = server;
            server = null;
        }
        if (p == null)
            return;

        try {
            if (!p.HasExited)
                p.Kill();
        } catch {
            // ignore: process may already be gone
        }

        p.Dispose();
        HaxeBox.logger.Info("Compilation server stopped");
    }

    void StopBuildProcess() {
        Process? p;
        lock (processLock) {
            p = buildProcess;
            buildProcess = null;
        }
        if (p == null)
            return;

        try {
            if (!p.HasExited)
                p.Kill();
        } catch {
            // ignore: process may already be gone
        }

        p.Dispose();
    }

    void Queue(string path) {
        if (disposed || !enabled) 
            return;
        if (!string.IsNullOrEmpty(path)) {
            var fullPath = Path.GetFullPath(path);
            if (fullPath.StartsWith(outPathAbs, StringComparison.OrdinalIgnoreCase))
                return;
        }

        timer ??= new Timer(_ => BuildAsync(), null, Timeout.Infinite, Timeout.Infinite);
        timer.Change(BuildDebounceMs, Timeout.Infinite);
    }
}
