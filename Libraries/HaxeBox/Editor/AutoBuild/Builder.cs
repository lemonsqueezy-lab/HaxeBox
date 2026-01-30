using System;
using System.IO;
using System.Text;
using System.Threading;
using System.Diagnostics;
using System.Collections.Generic;
using Sandbox;

class Builder
{
    readonly List<string> defines = [];
    readonly List<string> modules = [];
    readonly List<string> packages = [];

    bool building, pending;

    public void Build(string root)
    {
        if (building) { pending = true; return; }
        building = true;
        try
        {
            var r = Run("haxe", root);
            if (r.ExitCode != 0) Log.Error($"[HaxeBox] FAILED ({r.ExitCode}) {r.Err} {r.Out}");
            else Log.Info($"[HaxeBox] OK {r.Out}");
            if (!string.IsNullOrWhiteSpace(r.Err)) Log.Error($"[HaxeBox] stderr: {r.Err}");
        }
        catch (Exception ex) { Log.Error($"[HaxeBox] Exception:\n{ex}"); }
        finally
        {
            building = false;
            if (pending) { pending = false; Queue(); }
        }
    }

    (int ExitCode, string Out, string Err) Run(string exe, string cwd)
    {
        List<string> args = [
            "-cp haxe",
            "-cs code/haxe"
        ];
        foreach (string define in defines)
            args.Add($"-D {define}");
        foreach (string package in packages)
            args.Add($"--macro include({package})");
        foreach (string module in modules)
            args.Add(module);

        var psi = new ProcessStartInfo
        {
            FileName = exe,
            Arguments = string.Join(" ", args),
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

    public void AddDefine(string d)
    {
        defines.Add(d);
    }

    public void AddPackage(string p)
    {
        packages.Add(p);
    }

    public void AddModule(string m)
    {
        modules.Add(m);
    }

    public void RemDefine(string d)
    {
        defines.Remove(d);
    }

    public void RemPackage(string p)
    {
        packages.Remove(p);
    }

    public void RemModule(string m)
    {
        modules.Remove(m);
    }
}