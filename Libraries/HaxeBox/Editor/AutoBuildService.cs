using System;
using System.Diagnostics;
using System.IO;
using System.Text;
using System.Threading;
using Sandbox;

sealed class AutoBuildService : IDisposable
{
    FileSystemWatcher? w;
    Timer? t;
    bool enabled = true, building, pending;

    string root = "", haxeDir = "", hxml = "";

    const int DebounceMs = 500;
    const string A = "# --- HAXEBOX AUTOGEN (DO NOT EDIT BETWEEN MARKERS) ---";
    const string B = "# --- HAXEBOX AUTOGEN END ---";

    public void Start()
    {
        root = Project.Current.GetRootPath();
        haxeDir = Path.Combine(root, "haxe");
        hxml = Path.Combine(root, "build.hxml");

        if (!Directory.Exists(haxeDir)) Directory.CreateDirectory(haxeDir);
        EnsureBuildHxml();

        w?.Dispose();
        w = new FileSystemWatcher(haxeDir)
        {
            IncludeSubdirectories = true,
            Filter = "*.*",
            NotifyFilter = NotifyFilters.FileName | NotifyFilters.DirectoryName | NotifyFilters.LastWrite
        };

        FileSystemEventHandler on = (_, e) => { if (enabled) OnFs(e); };
        RenamedEventHandler onR = (_, e) => { if (enabled) OnFsRename(e); };

        w.Created += on; w.Changed += on; w.Deleted += on; w.Renamed += onR;
        w.EnableRaisingEvents = true;

        Queue();
        Log.Info($"[HaxeBox] Auto-build ON. Watching: {haxeDir}");
    }

    public void Dispose()
    {
        enabled = false;
        try { w?.Dispose(); } catch { }
        try { t?.Dispose(); } catch { }
        w = null; t = null;
    }

    public void SetEnabled(bool v) => enabled = v;

    void OnFs(FileSystemEventArgs e)
    {
        if (!IsRelevant(e.FullPath)) return;

        if (e.ChangeType == WatcherChangeTypes.Created)
        {
            if (Directory.Exists(e.FullPath))
            {
                var pkg = ToPkg(e.FullPath);
                if (pkg != null) AddAutogen($"--macro include(\"{pkg}\")");
            }
            else
            {
                var mod = ToMod(e.FullPath);
                if (mod != null) AddAutogen(mod);
            }
        }

        Queue();
    }

    void OnFsRename(RenamedEventArgs e)
    {
        if (IsRelevant(e.FullPath)) OnFs(new FileSystemEventArgs(WatcherChangeTypes.Created, Path.GetDirectoryName(e.FullPath)!, Path.GetFileName(e.FullPath)));
        if (IsRelevant(e.OldFullPath)) Queue();
    }

    void Queue()
    {
        if (!enabled) return;
        t ??= new Timer(_ => Build(), null, Timeout.Infinite, Timeout.Infinite);
        t.Change(DebounceMs, Timeout.Infinite);
    }

    void Build()
    {
        if (building) { pending = true; return; }
        building = true;
        try
        {
            var r = Run(GetHaxeExe(), "build.hxml", root);
            if (r.ExitCode != 0) Log.Error($"[HaxeBox] FAILED ({r.ExitCode})\n{r.Err}\n{r.Out}");
            else Log.Info($"[HaxeBox] OK\n{Trim(r.Out)}");
            if (!string.IsNullOrWhiteSpace(r.Err)) Log.Warning($"[HaxeBox] stderr:\n{Trim(r.Err)}");
        }
        catch (Exception ex) { Log.Error($"[HaxeBox] Exception:\n{ex}"); }
        finally
        {
            building = false;
            if (pending) { pending = false; Queue(); }
        }
    }

    void EnsureBuildHxml()
    {
        if (File.Exists(hxml)) return;

        File.WriteAllText(hxml,
@"-cp .haxe
-cp haxe
-cs code/haxe

-D no-compilation
-D no-root
-D real-position
-D erase-generics
-D analyzer-optimize

" + A + @"
" + B + @"
");
    }

    void AddAutogen(string line)
    {
        var txt = File.ReadAllText(hxml);
        var ia = txt.IndexOf(A, StringComparison.Ordinal);
        var ib = txt.IndexOf(B, StringComparison.Ordinal);
        if (ia < 0 || ib < 0 || ib < ia) return;

        ia += A.Length;
        var block = txt.Substring(ia, ib - ia);
        if (block.Contains("\n" + line + "\n") || block.Trim().EndsWith(line)) return;

        txt = txt.Insert(ib, (block.EndsWith("\n") ? "" : "\n") + line + "\n");
        File.WriteAllText(hxml, txt);
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

    static (int ExitCode, string Out, string Err) Run(string exe, string args, string cwd)
    {
        var psi = new ProcessStartInfo
        {
            FileName = exe,
            Arguments = args,
            WorkingDirectory = cwd,
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
        return (p.ExitCode, o, e);
    }

    static string GetHaxeExe()
    {
        var env = Environment.GetEnvironmentVariable("HAXE_EXE");
        if (!string.IsNullOrWhiteSpace(env) && File.Exists(env)) return env;
        var typical = @"C:\HaxeToolkit\haxe\haxe.exe";
        if (File.Exists(typical)) return typical;
        return "haxe";
    }

    static string Trim(string s) => s.Length > 6000 ? s[..6000] + "\n..." : s;
}
