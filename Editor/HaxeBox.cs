#nullable enable

using System;
using System.IO;
using System.Threading;
using System.Reflection;
using System.Collections.Generic;
using System.Text.Json;
using Editor;
using Sandbox;
using Sandbox.Diagnostics;

public static class HaxeBox {
    const string DefaultLibraryPath = "libraries/lemonsqueezy.haxebox";
    const string SettingsFileName = "haxebox.json";

    sealed class SettingsData {
        public bool HotloadEnabled { get; set; }
        public int BuildServerPort { get; set; } = 6060;
        public string HaxePath { get; set; } = "";
        public string SrcPath { get; set; } = "";
        public string OutPath { get; set; } = "";
        public string Libraries { get; set; } = "";
        public string Exclude { get; set; } = "Properties";
    }

    sealed class PreferencesPage : Widget {
        public PreferencesPage(Widget parent) : base(parent) {
            Layout = Layout.Column();
            Layout.Margin = 32;
            Layout.Spacing = 8;

            if (!EnsureInitialized()) {
                Layout.Add(new Label("Project is not loaded"));
                Layout.AddStretchCell();
                return;
            }

            Layout.Add(new Label.Subtitle("HaxeBox"));

            var draftPort = settings.BuildServerPort;
            var draftHaxePath = settings.HaxePath;
            var draftSrcPath = settings.SrcPath;
            var draftOutPath = settings.OutPath;
            var draftLibraries = settings.Libraries;
            var draftExclude = settings.Exclude;
            var draftHotload = settings.HotloadEnabled;
            Button.Primary? save = null;
            LineEdit? portEdit = null;
            Label? portError = null;

            var topRow = Layout.AddRow();
            topRow.Spacing = 8;

            topRow.Add(new Label("Build Server Port"));
            portEdit = topRow.Add(new LineEdit(settings.BuildServerPort.ToString()), 1);
            portEdit.PlaceholderText = "6060";
            portEdit.TextEdited += text => {
                if (!int.TryParse(text, out var parsed) || parsed < 1 || parsed > 65535) 
                {
                    UpdateSaveEnabled();
                    return;
                }
                draftPort = parsed;
                UpdateSaveEnabled();
            };
            portError = Layout.Add(new Label("Port must be a number from 1 to 65535"));
            portError.Visible = false;

            var hotload = topRow.Add(new Checkbox("Hotload"));
            hotload.State = settings.HotloadEnabled ? CheckState.On : CheckState.Off;
            hotload.StateChanged = state => {
                draftHotload = state == CheckState.On;
                UpdateSaveEnabled();
            };

            Layout.Add(new Label("Haxe Path (optional)"));
            var pathEdit = Layout.Add(new LineEdit(settings.HaxePath));
            pathEdit.TextEdited += text => {
                draftHaxePath = text.Trim();
                UpdateSaveEnabled();
            };

            Layout.Add(new Label("Libraries (separate with ';' or ',')"));
            var librariesEdit = Layout.Add(new LineEdit(settings.Libraries));
            librariesEdit.TextEdited += text => {
                draftLibraries = text.Trim();
                UpdateSaveEnabled();
            };

            Layout.AddSeparator();

            Layout.Add(new Label("Source path"));
            var srcEdit = Layout.Add(new LineEdit(settings.SrcPath));
            srcEdit.TextEdited += text => {
                draftSrcPath = text.Trim();
                UpdateSaveEnabled();
            };

            Layout.Add(new Label("Out path"));
            var outPath = Layout.Add(new LineEdit(settings.OutPath));
            outPath.TextEdited += text => {
                draftOutPath = text.Trim();
                UpdateSaveEnabled();
            };

            Layout.Add(new Label("Exclude (separate with ';' or ',')"));
            var excludeEdit = Layout.Add(new LineEdit(settings.Exclude));
            excludeEdit.TextEdited += text => {
                draftExclude = text.Trim();
                UpdateSaveEnabled();
            };

            Layout.AddSeparator();

            var buttonsRow = Layout.AddRow();
            buttonsRow.Spacing = 8;

            var gen = buttonsRow.Add(new Button("Generate Externs", "construction"));
            gen.Clicked = GenerateExterns;

            var clear = buttonsRow.Add(new Button("Clear Output", "delete"));
            clear.Clicked = ClearOutput;

            save = buttonsRow.Add(new Button.Primary("Save", "save"));
            save.Clicked = () => {
                if (portEdit == null || !int.TryParse(portEdit.Text, out var parsedPort) || parsedPort < 1 || parsedPort > 65535) {
                    logger.Warning("Invalid Haxe build server port. Allowed range: 1-65535.");
                    return;
                }

                draftPort = parsedPort;
                var prevHotload = settings.HotloadEnabled;
                var prevOutPath = settings.OutPath;

                settings.BuildServerPort = draftPort;
                settings.HaxePath = draftHaxePath;
                settings.SrcPath = draftSrcPath;
                settings.OutPath = draftOutPath;
                settings.Libraries = draftLibraries;
                settings.Exclude = draftExclude;
                settings.HotloadEnabled = draftHotload;

                SaveSettings();
                var prevOutNormalized = NormalizeConfiguredPath(prevOutPath, "code/__haxe__");
                var newOutNormalized = NormalizeConfiguredPath(settings.OutPath, "code/__haxe__");

                if (!string.Equals(prevOutNormalized, newOutNormalized, StringComparison.OrdinalIgnoreCase)) {
                    var oldOutAbs = ResolveProjectPath(prevOutNormalized);
                    var newOutAbs = ResolveProjectPath(newOutNormalized);
                    TryDeletePreviousOutput(oldOutAbs, newOutAbs);
                }

                ApplyBuilderSettings(true);

                if (settings.HotloadEnabled != prevHotload) {
                    if (settings.HotloadEnabled)
                        EnsureBuilder().Resume();
                    else
                        builder?.Pause();
                }

                UpdateSaveEnabled();
            };
            save.Enabled = false;

            UpdateSaveEnabled();
            Layout.AddStretchCell();

            void UpdateSaveEnabled() {
                var hasPortError = portEdit == null || !int.TryParse(portEdit.Text, out var parsedPort) || parsedPort < 1 || parsedPort > 65535;
                var hasChanges =
                    draftPort != settings.BuildServerPort ||
                    !string.Equals(draftHaxePath, settings.HaxePath, StringComparison.Ordinal) ||
                    !string.Equals(draftSrcPath, settings.SrcPath, StringComparison.Ordinal) ||
                    !string.Equals(draftOutPath, settings.OutPath, StringComparison.Ordinal) ||
                    !string.Equals(draftLibraries, settings.Libraries, StringComparison.Ordinal) ||
                    draftHotload != settings.HotloadEnabled ||
                    !string.Equals(draftExclude, settings.Exclude, StringComparison.Ordinal);

                if (save == null)
                    return;

                if (portError != null)
                    portError.Visible = hasPortError;

                save.Enabled = hasChanges && !hasPortError;
            }
        }
    }

    static readonly JsonSerializerOptions JsonOptions = new() { WriteIndented = true };
    static SettingsData settings = new();
    static bool initialized;

    public static Logger logger = new Logger("HaxeBox");
    private static Builder? builder;
    
    public static string path = DefaultLibraryPath;
    public static string root = "";
    public static Project project = null!;
    public static (bool whitelist, bool release, HashSet<string> symbols) config = (true, true, []);

    public static string GetSrcPath() {
        return NormalizeConfiguredPath(settings.SrcPath, "code");
    }

    public static string GetOutPath() {
        return NormalizeConfiguredPath(settings.OutPath, "code/__haxe__");
    }
    
    public static string[] GetLibraries() {
        return ParseList(settings.Libraries);
    }
    
    public static string[] GetExclude() {
        return ParseList(settings.Exclude);
    }

    [Event("editor.preferences")]
    static void OnEditorPreferences(NavigationView container) {
        container.AddSectionHeader("HaxeBox");
        container.AddPage("HaxeBox", "construction", new PreferencesPage(container));
    }

    [Event("editor.created")]
    public static void OnCreated(EditorMainWindow mainWindow) {
        try {
            if (!EnsureInitialized())
                throw new InvalidOperationException("Project.Current is null");

            var externPath = Path.Combine(path, "haxe", "extern");
            if (!Directory.Exists(externPath) || Directory.GetFiles(externPath).Length == 0)
                GenerateExterns();

            if (settings.HotloadEnabled)
                EnsureBuilder().Resume();

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
    private static void OnPlay() {
        if (!EnsureInitialized())
            return;

        var activeBuilder = EnsureBuilder();
        if (!activeBuilder.enabled)
            activeBuilder.BuildAsync();
    }
    
    [Event("compile.started")]
    private static void CompileStarted(CompileGroup group) {
        if (!EnsureInitialized())
            return;

        var cfg = project.Config.GetMetaOrDefault("Compiler", new Compiler.Configuration());
        var whitelist = !project.Config.IsStandaloneOnly;
        var release = cfg.ReleaseMode == Compiler.ReleaseMode.Release;
        var symbols = cfg.GetPreprocessorSymbols();

        if (whitelist != config.whitelist || release != config.release || !symbols.SetEquals(config.symbols)) {
            config = (whitelist, release, symbols);
            logger.Info("Build config changed");

            EnsureBuilder().Build();
        }
    }

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

    private static void ClearOutput() {
        try {
            var outPath = Path.Combine(root, GetOutPath());
            if (Directory.Exists(outPath))
                Directory.Delete(outPath, true);
            logger.Info("Cleared output");
        } catch (Exception e) {
            logger.Warning("Failed to clear output: " + e.ToString());
        }
    }

    private static bool EnsureInitialized() {
        if (initialized)
            return true;

        if (Project.Current == null)
            return false;

        project = Project.Current;
        root = project.GetRootPath() ?? root;
        path = FindPath();
        LoadSettings();

        initialized = true;
        return true;
    }

    private static Builder EnsureBuilder() {
        builder ??= new Builder(settings.BuildServerPort, GetHaxeCommand(), GetSrcPath(), GetOutPath(), GetExclude());
        builder.ApplySettings(settings.BuildServerPort, GetHaxeCommand(), GetSrcPath(), GetOutPath(), GetExclude());
        return builder;
    }

    private static void ApplyBuilderSettings(bool rebuild = false) {
        MainThread.Queue(() => {
            try {
                var activeBuilder = EnsureBuilder();
                activeBuilder.ApplySettings(settings.BuildServerPort, GetHaxeCommand(), GetSrcPath(), GetOutPath(), GetExclude());
                if (rebuild)
                    activeBuilder.BuildAsync();
            } catch (Exception e) {
                logger.Warning("Failed to apply builder settings: " + e.Message);
            }
        });
    }

    private static string GetSettingsPath() {
        if (string.IsNullOrEmpty(root))
            return "";

        return Path.Combine(root, SettingsFileName);
    }

    private static string GetHaxeCommand() {
        if (string.IsNullOrWhiteSpace(settings.HaxePath))
            return "haxe";

        return settings.HaxePath.Trim();
    }

    private static string NormalizeConfiguredPath(string? configured, string fallback) {
        var value = configured?.Trim() ?? "";
        if (string.IsNullOrWhiteSpace(value))
            value = fallback;

        return value.Replace('\\', '/').Trim('/');
    }

    private static string[] ParseList(string? value) {
        return (value ?? "").Split(new[] { ';', ',' }, StringSplitOptions.RemoveEmptyEntries | StringSplitOptions.TrimEntries);
    }

    private static string ResolveProjectPath(string configuredOrNormalizedPath) {
        if (Path.IsPathRooted(configuredOrNormalizedPath))
            return Path.GetFullPath(configuredOrNormalizedPath);

        return Path.GetFullPath(Path.Combine(root, configuredOrNormalizedPath));
    }

    private static void TryDeletePreviousOutput(string oldOutAbs, string newOutAbs) {
        try {
            if (string.Equals(oldOutAbs, newOutAbs, StringComparison.OrdinalIgnoreCase))
                return;
            if (Directory.Exists(oldOutAbs)) {
                Directory.Delete(oldOutAbs, true);
                logger.Info("Removed previous output: " + oldOutAbs);
            }
        } catch (Exception e) {
            logger.Warning("Failed to remove previous output: " + e.Message);
        }
    }

    private static void NormalizeSettings() {
        if (settings.BuildServerPort < 1 || settings.BuildServerPort > 65535)
            settings.BuildServerPort = 6060;

        settings.HaxePath = settings.HaxePath?.Trim() ?? "";
        settings.SrcPath = settings.SrcPath?.Trim() ?? "";
        settings.OutPath = settings.OutPath?.Trim() ?? "";
        settings.Libraries = settings.Libraries?.Trim() ?? "";
        settings.Exclude = settings.Exclude?.Trim() ?? "Properties";
    }

    private static void LoadSettings() {
        var settingsPath = GetSettingsPath();
        if (string.IsNullOrEmpty(settingsPath))
            return;

        try {
            if (File.Exists(settingsPath)) {
                var json = File.ReadAllText(settingsPath);
                var loaded = JsonSerializer.Deserialize<SettingsData>(json);
                if (loaded != null)
                    settings = loaded;
            }
        } catch (Exception e) {
            logger.Warning("Failed to load settings: " + e.Message);
        }

        NormalizeSettings();
    }

    private static void SaveSettings() {
        var settingsPath = GetSettingsPath();
        if (string.IsNullOrEmpty(settingsPath))
            return;

        try {
            NormalizeSettings();
            var json = JsonSerializer.Serialize(settings, JsonOptions);
            File.WriteAllText(settingsPath, json);
            logger.Info("Settings updated");
        } catch (Exception e) {
            logger.Warning("Failed to save settings: " + e.Message);
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

        EnsureBuilder().BuildAsync(res => {
            MainThread.Queue(cb);
            if (!res)
                logger.Warning("Failed to pre-build Release version. Debug version exported!");
        });
    }
}
