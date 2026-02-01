#nullable enable

using System;
using Sandbox;
using Sandbox.Diagnostics;
using Editor;

public static class HaxeBox
{
    public static Logger logger = new Logger("HaxeBox");
    public static string projectRoot = "";

    private static AutoBuilder? builder;

    [Event("editor.created")]
    private static void OnEditorCreated(EditorMainWindow _)
    {
        projectRoot = Project.Current.GetRootPath();
        EnableAutoBuild();
        GenerateExterns();
    }

    [Event("app.exit")]
    private static void OnAppExit()
    {
        builder?.Dispose();
        builder = null;
    }

    [Menu("Editor", "HaxeBox/Generate Externs")]
    private static void GenerateExterns()
    {
        try
        {
            var msg = ExternGen.GenerateFromRuntime(["Sandbox"]);
            logger.Info(msg);
            (builder ??= new AutoBuilder()).Build();
        }
        catch (Exception e)
        {
            logger.Error(e.ToString());
            throw;
        }
    }

    [Menu("Editor", "HaxeBox/Enable Auto Build")]
    private static void EnableAutoBuild()
    {
        builder ??= new AutoBuilder();

        if (builder.enabled)
            builder.Dispose();
        else
            builder.Start();
    }
}
