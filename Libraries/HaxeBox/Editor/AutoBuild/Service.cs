using System;
using System.IO;
using System.Text;
using System.Threading;
using System.Diagnostics;
using System.Collections.Generic;

sealed class AutoBuildService : IDisposable
{
    Timer? timer;
    FileSystemWatcher? watcher;

    bool enabled = true, building, pending;

    string root = "", src = "", dest = "";

    const int DebounceMs = 500;

    readonly List<string> defines = [
        "no-root",
        "no-compilation",
        "real-position",
        "erase-generics",
        "analyzer-optimize"
    ];

    public void Start(string root, string src, string dest)
    {
        enabled = true;

        this.root = root;
        this.src = src;
        this.dest = dest;

        Directory.CreateDirectory(src);

        watcher?.Dispose();
        watcher = new FileSystemWatcher(Path.Combine(root, src))
        {
            IncludeSubdirectories = true,
            Filter = "*.*",
            NotifyFilter = NotifyFilters.FileName | NotifyFilters.DirectoryName | NotifyFilters.LastWrite
        };

        watcher.Created += (_, __) => Queue();
        watcher.Changed += (_, __) => Queue();
        watcher.Deleted += (_, __) => Queue();
        watcher.Renamed += (_, __) => Queue();
        watcher.EnableRaisingEvents = true;

        Queue();
        Log.Info($"[HaxeBox] Auto-build ON. Watching: {src}");
    }

    public void Dispose()
    {
        enabled = false;
        try { watcher?.Dispose(); } catch { }
        try { timer?.Dispose(); } catch { }
        watcher = null; timer = null;
    }

    void Queue()
    {
        if (!enabled) 
            return;
        timer ??= new Timer(_ => Build(), null, Timeout.Infinite, Timeout.Infinite);
        timer.Change(DebounceMs, Timeout.Infinite);
    }

    void Build()
    {
        if (building) { pending = true; return; }
        building = true;
        try
        {
            string hxml = $"-cp {Path.Combine(".haxe", "extern")}\n";
            hxml += $"-cp {src}\n";
            hxml += $"-cs {dest}\n";
            foreach (string define in defines)
                hxml += $"-D {define}\n";
            foreach (string mod in Directory.GetFiles(Path.Combine(root, src), "*.hx"))
                hxml += $"{Path.GetFileName(mod)}\n";
            foreach (string pak in Directory.GetDirectories(Path.Combine(root, src)))
                hxml += $"--macro include('{Path.GetFileName(pak)}', true)\n";

            File.WriteAllText(Path.Combine(root, "build.hxml"), hxml);

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

            using var p = Process.Start(psi)!;
            var o = p.StandardOutput.ReadToEnd();
            var e = p.StandardError.ReadToEnd();
            p.WaitForExit();

            if (p.ExitCode != 0) 
                Log.Error($"[HaxeBox] FAILED ({p.ExitCode}) {e} {o}");
        }
        catch (Exception ex) { Log.Error($"[HaxeBox] Exception:\n{ex}"); }
        finally
        {
            building = false;
            if (pending) { pending = false; Queue(); }
        }
    }
}
