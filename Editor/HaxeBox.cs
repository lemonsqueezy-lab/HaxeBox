#nullable enable

using System;
using System.IO;
using System.Text;
using System.Reflection;
using System.Diagnostics;
using System.Collections.Generic;
using Sandbox;
using Sandbox.Diagnostics;
using Editor;
using Editor.Wizards;

public static class HaxeBox {
    public static int port = 6060;
    public static Logger logger = new Logger("HaxeBox");
    private static Builder? builder;
    
    public static string path = "libraries/lemonsqueezy.haxebox";
    public static string root = "";
    public static Project project = null;
    public static (bool whitelist, bool release, HashSet<string> symbols) config = (true, true, []);

    [Event("editor.created")]
    public static void OnCreated(EditorMainWindow mainWindow) {
        try {
            project = Project.Current;
            root = project.GetRootPath();
            path = FindPath();

            Editor.Application.OnWidgetClicked = OnWidgetClicked;
        } catch (Exception e) {
            logger.Error("Failed to start HaxeBox: " + e.ToString());
        }
    }
  
    static void OnWidgetClicked(Widget w, MouseEvent e) {
        if (w == null) 
            return;

        try {
            if (w is Button button) {
                if (button.Text != "Next")
                    return;

                var parent = w.Parent;
                if (parent == null) 
                    return;
                var parentType = parent.GetType();
                if (parentType.FullName == "Editor.Wizards.StandaloneWizard") 
                    return;
                var curProp = parentType.GetProperty("Current", BindingFlags.Instance|BindingFlags.Public|BindingFlags.NonPublic);
                if (curProp.GetValue(parent).GetType().FullName == "Editor.Wizards.StandaloneWizard+ReviewWizardPage") 
                    return;

                var cb = button.Clicked;
                e.Accepted = true;

                builder ??= new Builder(port);
                if (!builder.enabled)
                    builder.BuildAsync((res) => {
                        MainThread.Queue(cb);
                        if (!res)
                            logger.Warning("Failed to pre-build Release version. Debug version exported!");
                    });
            }
        } catch(Exception er) {
            Log.Warning(er.Message);
        }
    }

    [Event("app.exit")]
    private static void OnAppExit() {
        builder?.Dispose();
        builder = null;
        ClearOutput();
    }

    [Event("scene.startplay")]
    private static void AutoBuild() {
        builder ??= new Builder(port);
        if (!builder.enabled)
            builder.BuildAsync();
    }
    
    [Event("compile.started")]
    private static void CompileStarted(CompileGroup group) {
        var cfg = project.Config.GetMetaOrDefault("Compiler", new Compiler.Configuration());
        var whitelist = !project.Config.IsStandaloneOnly;
        var release = cfg.ReleaseMode == Compiler.ReleaseMode.Release;
        var symbols = cfg.GetPreprocessorSymbols();

        if (whitelist != config.whitelist || release != config.release || !symbols.SetEquals(config.symbols)) {
            config = (whitelist, release, symbols);
            logger.Info("Build config changed");

            builder ??= new Builder(port);
            builder.Build();
        }
    }

    [Menu("Editor", "HaxeBox/Toggle Auto Build")]
    private static void ToggleAutoBuild() {
        builder ??= new Builder(port);
        if (builder.enabled)
            builder.Pause();
        else
            builder.Resume();
    }

    [Menu("Editor", "HaxeBox/Clear Output")]
    private static void ClearOutput() {
        try {
            var outPath = Path.Combine(root, "code", "__haxe__");
            if (Directory.Exists(outPath))
                Directory.Delete(outPath, true);
            logger.Info("Cleared output");
        } catch (Exception e) {
            logger.Warning("Failed to clear output: " + e.ToString());
        }
    }

    static string FindPath() {
        var fs = Editor.FileSystem.Libraries;
        string? rel = null;
        foreach (var f in fs.FindFile("", "haxebox.sbproj", recursive: true)) {
            rel = f;
            break;
        }
        if (!string.IsNullOrEmpty(rel)) {
            var full = fs.GetFullPath(rel);
            if (!string.IsNullOrEmpty(full))
                return Path.GetDirectoryName(full)!;
        }
        throw new Exception("Failed to find HaxeBox path");
    }
}
