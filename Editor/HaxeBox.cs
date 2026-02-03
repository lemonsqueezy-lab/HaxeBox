#nullable enable

using System;
using System.IO;
using Sandbox;
using Sandbox.Diagnostics;
using Editor;

public static class HaxeBox
{
    public static int port = 6060;
    public static string path = "libraries/lemonsqueezy.haxebox";
    public static Logger logger = new Logger("HaxeBox");
    private static Builder? builder;

    [Event("editor.created")]
    public static void OnCreated(EditorMainWindow _)
    {
        FindPath();
        GenerateExterns();
    }

    [Event("app.exit")]
    private static void OnAppExit()
    {
        builder?.Dispose();
        builder = null;
    }

    [Event("scene.startplay")]
    private static void Build()
    {
        builder ??= new Builder(port);
        builder.Build();
    }

    [Menu("Editor", "HaxeBox/Generate Externs")]
    private static void GenerateExterns()
    {
        var msg = ExternGen.GenerateFromRuntime(["Sandbox"]);

        logger.Info(msg);
        Build();
    }

    [Menu("Editor", "HaxeBox/Toggle Auto Build")]
    private static void ToggleAutoBuild()
    {
        builder ??= new Builder(port);

        if (builder.enabled)
            builder.Pause();
        else
            builder.Resume();
    }

    private static void FindPath() {
        var fs = Editor.FileSystem.Libraries;

        string? rel = null;
        foreach (var f in fs.FindFile("", "haxebox.sbproj", recursive: true)) {
            rel = f;
            break;
        }
        if (!string.IsNullOrEmpty(rel)) {
            var full = fs.GetFullPath(rel);
            if (!string.IsNullOrEmpty(full))
                path = Path.GetDirectoryName(full)!;
        }
    }
}
