#nullable enable

using System;
using System.IO;
using System.Text;
using System.Threading;
using System.Reflection;
using System.Diagnostics;
using System.Collections.Generic;
using Editor;
using Editor.Wizards;
using Sandbox;
using Sandbox.Diagnostics;

public static class HaxeBox {
    public static int port = 6060;
    public static Logger logger = new Logger("HaxeBox");
    private static Builder? builder;
    
    public static string path = "libraries/lemonsqueezy.haxebox";
    public static string root = "";
    public static Project project = null!;
    public static (bool whitelist, bool release, HashSet<string> symbols) config = (true, true, []);

    [Event("editor.created")]
    public static void OnCreated(EditorMainWindow mainWindow) {
        try {
            project = Project.Current ?? throw new InvalidOperationException("Project.Current is null");
            root = project.GetRootPath() ?? root;
            path = FindPath();

            if (!Directory.Exists(Path.Combine(path, "haxe", "extern")) || Directory.GetFiles(path).Length == 0)
                GenerateExterns();

            Editor.Application.OnWidgetClicked += OnWidgetClicked;
        } catch (Exception e) {
            logger.Error("Failed to start HaxeBox: " + e.ToString());
        }
    }
  
    [Event("app.exit")]
    private static void OnExit() {
        builder?.Dispose();
        builder = null;
        Editor.Application.OnWidgetClicked -= OnWidgetClicked;
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

    [Menu("Editor", "HaxeBox/Generate Extern Types")]
    private static void GenerateExterns() {
        ThreadPool.QueueUserWorkItem(_ => {
            Toaster.CompileStarted("Haxe", "Generating extern types...");
            try {
                ExternGen.GenerateFromRuntime(["Sandbox"]);
                Toaster.CompileSucceeded("Haxe", "Extern types generated");
            } catch (Exception e) {
                Toaster.CompileFailed("Haxe", [e.Message], "Failed to generate extern types");
            }
        });
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
        return path;
    }

    static void OnWidgetClicked(Widget w, MouseEvent e) {
        if (w is not Button button) return;
        if (button.Text != "Next") return;

        var parent = w.Parent;
        if (parent == null) return;

        var parentType = parent.GetType();
        var parentFullName = parentType.FullName ?? "";
        if (parentFullName != "Editor.Wizards.StandaloneWizard" &&
            parentFullName != "Editor.Wizards.PublishWizard")
            return;

        // workaround https://github.com/Facepunch/sbox-public/issues/10037
        Editor.EditorEvent.Unregister(parent);

        var curProp = parentType.GetProperty("Current", BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic);
        var current = curProp?.GetValue(parent);
        if (current == null) return;

        var currentFullName = current.GetType().FullName ?? "";
        if (currentFullName != "Editor.Wizards.StandaloneWizard+ReviewWizardPage" &&
            currentFullName != "Editor.Wizards.PublishWizard+ReviewWizardPage")
            return;

        var cb = button.Clicked;
        e.Accepted = true;

        builder ??= new Builder(port);
        builder.BuildAsync(res => {
            MainThread.Queue(cb);
            if (!res)
                logger.Warning("Failed to pre-build Release version. Debug version exported!");
        });
    }
}
