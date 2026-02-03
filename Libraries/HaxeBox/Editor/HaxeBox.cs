#nullable enable

using System;
using System.Threading;
using System.Threading.Tasks;
using Sandbox;
using Sandbox.Diagnostics;
using Editor;

public static class HaxeBox
{
    public static int port = 6060;

    public static Logger logger = new Logger("HaxeBox");

    private static Builder? builder;
    private static int externsRunning;

    [Event("editor.created")]
    private static async Task Init()
    {
        builder ??= new Builder(port);

        var ok = await GenerateExterns();
        if (ok)
            builder.Build();
    }

    [Event("app.exit")]
    private static void OnAppExit()
    {
        builder?.Dispose();
        builder = null;
    }

    [Event("scene.startplay")]
    private static void OnSceneStartPlay()
    {
        if (builder?.enabled == true)
            builder.Build();
    }

    [Menu("Editor", "HaxeBox/Generate Externs")]
    private static async Task<bool> GenerateExterns()
    {
        if (Interlocked.Exchange(ref externsRunning, 1) == 1)
        {
            await GameTask.MainThread();
            logger.Info("Extern generation is already running");
            return false;
        }

        try
        {
            await GameTask.WorkerThread();
            var msg = ExternGen.GenerateFromRuntime(["Sandbox"]);

            await GameTask.MainThread();
            logger.Info(msg);
            return true;
        }
        catch (Exception e)
        {
            await GameTask.MainThread();
            logger.Error(e.ToString());
            return false;
        }
        finally
        {
            Interlocked.Exchange(ref externsRunning, 0);
        }
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
}
