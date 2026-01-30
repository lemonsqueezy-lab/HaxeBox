using System;
using System.IO;
using System.Text;
using System.Threading;
using System.Diagnostics;
using System.Collections.Generic;
using Sandbox;

sealed class AutoBuildService : IDisposable
{
    Timer? timer;
    FileSystemWatcher? watcher;
    Builder builder;

    bool enabled = true;

    string root = "", haxeDir = "";

    const int DebounceMs = 500;

    public void Start() {
        root = Project.Current.GetRootPath();
        haxeDir = Path.Combine(root, "haxe");
        builder = new Builder();

        if (!Directory.Exists(haxeDir)) Directory.CreateDirectory(haxeDir);

        watcher?.Dispose();
        watcher = new FileSystemWatcher(haxeDir)
        {
            IncludeSubdirectories = true,
            Filter = "*.*",
            NotifyFilter = NotifyFilters.FileName | NotifyFilters.DirectoryName | NotifyFilters.LastWrite
        };

        watcher.Created += (_, e) => { 
            if (enabled)
            {
                if (Directory.Exists(e.FullPath)) {
                    var pkg = ToPkg(e.FullPath);
                    if (pkg != null) builder.AddPackage(pkg);
                } else {
                    var mod = ToMod(e.FullPath);
                    if (mod != null) Builder.AddModule(mod);
                }
            }
        }; 

        watcher.Changed += (_, e) => { 
            if (enabled)
            {
                if (Directory.Exists(e.FullPath)) {
                    var pkg = ToPkg(e.FullPath);
                    if (pkg != null) builder.AddPackage(pkg);
                } else {
                    var mod = ToMod(e.FullPath);
                    if (mod != null) builder.AddModule(mod);
                }
            }
        };

        watcher.Deleted += (_, e) => { 
            if (enabled)
            {
                if (Directory.Exists(e.FullPath)) {
                    var pkg = ToPkg(e.FullPath);
                    if (pkg != null) Builder.packages.Remove(pkg);
                } else {
                    var mod = ToMod(e.FullPath);
                    if (mod != null) Builder.modules.Remove(mod);
                }
            }
        };

        watcher.Renamed += (_, e) => { 
            if (enabled)
            {
                if (Directory.Exists(e.FullPath)) {
                    var pkg = ToPkg(e.FullPath);
                    if (pkg != null) Builder.packages.Add(pkg);
                } else {
                    var mod = ToMod(e.FullPath);
                    if (mod != null) Builder.modules.Add(mod);
                }
            }
        }; 

        Queue();
        Log.Info($"[HaxeBox] Auto-build ON. Watching: {haxeDir}");
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
        if (!enabled) return;
        timer ??= new Timer(_ => Builder.Build(root), null, Timeout.Infinite, Timeout.Infinite);
        timer.Change(DebounceMs, Timeout.Infinite);
    }

    static bool IsRelevant(string p)
    {
        if (string.IsNullOrWhiteSpace(p)) return false;
        if (Directory.Exists(p)) return true;
        var f = Path.GetFileName(p);
        if (f.Equals("build.hxml", StringComparison.OrdinalIgnoreCase)) return true;
        var ext = Path.GetExtension(p).ToLowerInvariant();
        return ext == ".hx" || ext == ".hxml" || f.Equals("haxelib.json", StringComparison.OrdinalIgnoreCase);
    }

    string? ToPkg(string dir)
    {
        var rel = Path.GetRelativePath(haxeDir, dir).Replace('\\', '/').Trim('/');
        if (string.IsNullOrWhiteSpace(rel) || rel.StartsWith("..")) return null;
        return rel.Replace('/', '.');
    }

    string? ToMod(string file)
    {
        if (!file.EndsWith(".hx", StringComparison.OrdinalIgnoreCase)) return null;
        var rel = Path.GetRelativePath(haxeDir, file).Replace('\\', '/').Trim('/');
        if (string.IsNullOrWhiteSpace(rel) || rel.StartsWith("..")) return null;
        rel = rel[..^3];
        return rel.Replace('/', '.');
    }

}
