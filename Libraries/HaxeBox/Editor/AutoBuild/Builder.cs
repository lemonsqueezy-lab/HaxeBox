#nullable enable

using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Text;
using System.Threading;

sealed class AutoBuilder : IDisposable
{
    private WatcherService? extWatcher;
    private WatcherService? srcWatcher;
    private Timer? timer;

    public bool enabled;
    private bool building;
    private bool pending;

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

        extWatcher = new WatcherService(Path.Combine(root, ".haxe", "extern"), Queue);
        extWatcher.Start();
        srcWatcher = new WatcherService(Path.Combine(root, "haxe"), Queue);
        srcWatcher.Start();

        HaxeBox.logger.Info("Auto-build enabled");
    }

    public void Dispose()
    {
        enabled = false;

        timer?.Dispose();
        timer = null;

        extWatcher?.Dispose();
        extWatcher = null;

        srcWatcher?.Dispose();
        srcWatcher = null;

        HaxeBox.logger.Info("Auto-build disabled");
        GC.SuppressFinalize(this);
    }

    private void Queue()
    {
        if (!enabled)
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
            var haxeDir = Path.Combine(root, "haxe");
            var hxmlPath = Path.Combine(root, "build.hxml");

            var hxml = new StringBuilder(2048)
                .AppendLine("-cp .haxe/extern")
                .AppendLine("-cp haxe")
                .AppendLine("-cs code/haxe")
                .AppendLine("--macro AttributeMacro.init()");

            foreach (var d in defines)
                hxml.AppendLine("-D " + d);

            foreach (var mod in Directory.EnumerateFiles(haxeDir, "*.hx"))
                hxml.AppendLine(Path.GetFileName(mod));

            foreach (var pak in Directory.EnumerateDirectories(haxeDir))
                hxml.AppendLine($"--macro include('{Path.GetFileName(pak)}', true)");

            File.WriteAllText(hxmlPath, hxml.ToString());

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
                Queue();
            }
        }
    }
}
