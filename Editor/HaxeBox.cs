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
        public int BuildServerPort { get; set; }
        public string HaxePath { get; set; } = "";
        public string ClsPaths { get; set; } = "";
        public string OutPath { get; set; } = "";
        public string Libraries { get; set; } = "";
        public string Exclude { get; set; } = "";
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
            var draftClsPaths = settings.ClsPaths;
            var draftOutPath = settings.OutPath;
            var draftLibraries = settings.Libraries;
            var draftExclude = settings.Exclude;
            var draftHotload = settings.HotloadEnabled;
            Button.Primary? save = null;
            LineEdit? portEdit = null;
            Label? portError = null;
            var clsPathEdits = new List<LineEdit>();
            var libraryEdits = new List<LineEdit>();
            var excludeEdits = new List<LineEdit>();
            Action<string>? onFolderSelected = null;
            var folderPicker = new FolderEdit(this) { Visible = false, DialogTitle = "Select Folder" };
            folderPicker.FolderSelected = selected => {
                if (string.IsNullOrWhiteSpace(selected))
                    return;
                onFolderSelected?.Invoke(selected.Trim());
            };

            var topRow = Layout.AddRow();
            topRow.Spacing = 8;

            topRow.Add(new Label("Build Server Port"));
            portEdit = topRow.Add(new LineEdit(settings.BuildServerPort.ToString()), 1);
            portEdit.PlaceholderText = "6060";
            portEdit.TextEdited += text => {
                if (TryReadPort(out var parsed))
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
            var haxePathRow = Layout.AddRow();
            haxePathRow.Spacing = 4;
            var haxePathEdit = haxePathRow.Add(new LineEdit(settings.HaxePath), 1);
            haxePathEdit.TextEdited += text => {
                draftHaxePath = text.Trim();
                UpdateSaveEnabled();
            };
            var haxeOpen = haxePathRow.Add(new Button("", "folder_open"));
            haxeOpen.Clicked = () => OpenPathInExplorer(haxePathEdit.Text, preferFile: true, projectRelative: false);
            var haxeBrowse = haxePathRow.Add(new Button("", "folder"));
            haxeBrowse.Clicked = () => {
                var picked = EditorUtility.OpenFileDialog("Select Haxe executable", "", ResolveAbsolutePath(haxePathEdit.Text, projectRelative: false));
                if (string.IsNullOrWhiteSpace(picked))
                    return;
                haxePathEdit.Text = picked;
                draftHaxePath = picked.Trim();
                UpdateSaveEnabled();
            };

            Layout.Add(new Label("Libraries (one per row)"));
            var librariesHost = Layout.Add(new Widget());
            librariesHost.Layout = Layout.Column();
            librariesHost.Layout.Spacing = 4;
            foreach (var library in ParseList(settings.Libraries))
                AddLibraryRow(library);
            if (libraryEdits.Count == 0)
                AddLibraryRow("");
            var addLibrary = Layout.Add(new Button("Add Library", "add"));
            addLibrary.Clicked = () => {
                AddLibraryRow("");
                UpdateSaveEnabled();
            };

            Layout.AddSeparator();

            Layout.Add(new Label("Class paths (one per row)"));
            var clsPathsHost = Layout.Add(new Widget());
            clsPathsHost.Layout = Layout.Column();
            clsPathsHost.Layout.Spacing = 4;
            foreach (var clsPath in ParseList(settings.ClsPaths))
                AddClsPathRow(clsPath);
            if (clsPathEdits.Count == 0)
                AddClsPathRow("");

            var addClsPath = Layout.Add(new Button("Add Class Path", "add"));
            addClsPath.Clicked = () => {
                var edit = AddClsPathRow("");
                BrowseFolderFor(edit, makeProjectRelative: true, () => {
                    UpdateClsPathsDraft();
                    UpdateSaveEnabled();
                });
                UpdateSaveEnabled();
            };

            Layout.Add(new Label("Out path"));
            var outPathRow = Layout.AddRow();
            outPathRow.Spacing = 4;
            var outPathEdit = outPathRow.Add(new LineEdit(settings.OutPath), 1);
            outPathEdit.TextEdited += text => {
                draftOutPath = text.Trim();
                UpdateSaveEnabled();
            };
            var outPathOpen = outPathRow.Add(new Button("", "folder_open"));
            outPathOpen.Clicked = () => OpenPathInExplorer(outPathEdit.Text, preferFile: false, projectRelative: true);
            var outPathBrowse = outPathRow.Add(new Button("", "folder"));
            outPathBrowse.Clicked = () => BrowseFolderFor(outPathEdit, makeProjectRelative: true, () => {
                draftOutPath = outPathEdit.Text.Trim();
                UpdateSaveEnabled();
            });

            Layout.Add(new Label("Exclude (one per row)"));
            var excludeHost = Layout.Add(new Widget());
            excludeHost.Layout = Layout.Column();
            excludeHost.Layout.Spacing = 4;
            foreach (var exclude in ParseList(settings.Exclude))
                AddExcludeRow(exclude);
            if (excludeEdits.Count == 0)
                AddExcludeRow("");
            var addExclude = Layout.Add(new Button("Add Exclude", "add"));
            addExclude.Clicked = () => {
                AddExcludeRow("");
                UpdateSaveEnabled();
            };

            Layout.AddSeparator();

            var buttonsRow = Layout.AddRow();
            buttonsRow.Spacing = 8;

            var clear = buttonsRow.Add(new Button("Clear Output", "delete"));
            clear.Clicked = ClearOutput;

            save = buttonsRow.Add(new Button.Primary("Save", "save"));
            save.Clicked = () => {
                if (!TryReadPort(out var parsedPort)) {
                    logger.Warning("Invalid Haxe build server port. Allowed range: 1-65535.");
                    return;
                }

                draftPort = parsedPort;
                var prevHotload = settings.HotloadEnabled;
                var prevOutPath = settings.OutPath;
                UpdateClsPathsDraft();
                UpdateLibrariesDraft();
                UpdateExcludeDraft();

                ApplyDraft();

                SaveSettings();
                var prevOutNormalized = NormalizeConfiguredPath(prevOutPath);
                var newOutNormalized = NormalizeConfiguredPath(settings.OutPath);

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

            void AddLibraryRow(string value) {
                var row = librariesHost.Layout.AddRow();
                row.Spacing = 4;

                var edit = row.Add(new LineEdit(value), 1);
                edit.PlaceholderText = "haxelib-name";
                edit.TextEdited += _ => {
                    UpdateLibrariesDraft();
                    UpdateSaveEnabled();
                };
                var remove = row.Add(new Button("", "close"));
                remove.Clicked = () => {
                    libraryEdits.Remove(edit);
                    row.Destroy();
                    UpdateLibrariesDraft();
                    UpdateSaveEnabled();
                };
                libraryEdits.Add(edit);
            }

            LineEdit AddClsPathRow(string value) {
                var row = clsPathsHost.Layout.AddRow();
                row.Spacing = 4;

                var edit = row.Add(new LineEdit(value), 1);
                edit.PlaceholderText = "code";
                edit.TextEdited += _ => {
                    UpdateClsPathsDraft();
                    UpdateSaveEnabled();
                };

                var open = row.Add(new Button("", "folder_open"));
                open.Clicked = () => OpenPathInExplorer(edit.Text, preferFile: false, projectRelative: true);

                var browse = row.Add(new Button("", "folder"));
                browse.Clicked = () => BrowseFolderFor(edit, makeProjectRelative: true, () => {
                    UpdateClsPathsDraft();
                    UpdateSaveEnabled();
                });
                var remove = row.Add(new Button("", "close"));
                remove.Clicked = () => {
                    clsPathEdits.Remove(edit);
                    row.Destroy();
                    UpdateClsPathsDraft();
                    UpdateSaveEnabled();
                };

                clsPathEdits.Add(edit);
                return edit;
            }

            void AddExcludeRow(string value) {
                var row = excludeHost.Layout.AddRow();
                row.Spacing = 4;

                var edit = row.Add(new LineEdit(value), 1);
                edit.PlaceholderText = "entry";
                edit.TextEdited += _ => {
                    UpdateExcludeDraft();
                    UpdateSaveEnabled();
                };
                var remove = row.Add(new Button("", "close"));
                remove.Clicked = () => {
                    excludeEdits.Remove(edit);
                    row.Destroy();
                    UpdateExcludeDraft();
                    UpdateSaveEnabled();
                };
                excludeEdits.Add(edit);
            }

            void UpdateClsPathsDraft() {
                var values = new List<string>(clsPathEdits.Count);
                foreach (var edit in clsPathEdits) {
                    var value = edit.Text.Trim();
                    if (!string.IsNullOrWhiteSpace(value))
                        values.Add(value);
                }
                draftClsPaths = string.Join(";", values);
            }

            void UpdateLibrariesDraft() {
                var values = new List<string>(libraryEdits.Count);
                foreach (var edit in libraryEdits) {
                    var value = edit.Text.Trim();
                    if (!string.IsNullOrWhiteSpace(value))
                        values.Add(value);
                }
                draftLibraries = string.Join(";", values);
            }

            void UpdateExcludeDraft() {
                var values = new List<string>(excludeEdits.Count);
                foreach (var edit in excludeEdits) {
                    var value = edit.Text.Trim();
                    if (!string.IsNullOrWhiteSpace(value))
                        values.Add(value);
                }
                draftExclude = string.Join(";", values);
            }

            string ResolveAbsolutePath(string value, bool projectRelative) {
                var path = value.Trim();
                if (string.IsNullOrWhiteSpace(path))
                    return root;
                if (!projectRelative || Path.IsPathRooted(path))
                    return Path.GetFullPath(path);
                return ResolveProjectPath(path);
            }

            string ToProjectRelative(string absolutePath) {
                var full = Path.GetFullPath(absolutePath);
                var projectRoot = Path.GetFullPath(root);
                if (!projectRoot.EndsWith(Path.DirectorySeparatorChar))
                    projectRoot += Path.DirectorySeparatorChar;

                if (full.StartsWith(projectRoot, StringComparison.OrdinalIgnoreCase))
                    return full.Substring(projectRoot.Length).Replace('\\', '/');
                return full.Replace('\\', '/');
            }

            void BrowseFolderFor(LineEdit edit, bool makeProjectRelative, Action onPicked) {
                onFolderSelected = selected => {
                    var value = makeProjectRelative ? ToProjectRelative(selected) : selected;
                    edit.Text = value;
                    onPicked();
                };
                folderPicker.Value = ResolveAbsolutePath(edit.Text, projectRelative: makeProjectRelative);
                folderPicker.Browse();
            }

            void OpenPathInExplorer(string value, bool preferFile, bool projectRelative) {
                var path = value.Trim();
                if (string.IsNullOrWhiteSpace(path))
                    return;

                var full = ResolveAbsolutePath(path, projectRelative);
                if (preferFile && File.Exists(full)) {
                    EditorUtility.OpenFileFolder(full);
                    return;
                }
                if (Directory.Exists(full))
                    EditorUtility.OpenFolder(full);
                else if (File.Exists(full))
                    EditorUtility.OpenFileFolder(full);
                else
                    logger.Warning("Path does not exist: " + full);
            }

            bool TryReadPort(out int port) {
                port = 0;
                return portEdit != null && int.TryParse(portEdit.Text, out port) && port is >= 1 and <= 65535;
            }

            void ApplyDraft() {
                settings.BuildServerPort = draftPort;
                settings.HaxePath = draftHaxePath;
                settings.ClsPaths = draftClsPaths;
                settings.OutPath = draftOutPath;
                settings.Libraries = draftLibraries;
                settings.Exclude = draftExclude;
                settings.HotloadEnabled = draftHotload;
            }

            void UpdateSaveEnabled() {
                var hasPortError = !TryReadPort(out _);
                var hasChanges =
                    draftPort != settings.BuildServerPort ||
                    !string.Equals(draftHaxePath, settings.HaxePath, StringComparison.Ordinal) ||
                    !string.Equals(CanonicalList(draftClsPaths), CanonicalList(settings.ClsPaths), StringComparison.Ordinal) ||
                    !string.Equals(draftOutPath, settings.OutPath, StringComparison.Ordinal) ||
                    !string.Equals(CanonicalList(draftLibraries), CanonicalList(settings.Libraries), StringComparison.Ordinal) ||
                    draftHotload != settings.HotloadEnabled ||
                    !string.Equals(CanonicalList(draftExclude), CanonicalList(settings.Exclude), StringComparison.Ordinal);

                if (save == null)
                    return;

                if (portError != null)
                    portError.Visible = hasPortError;

                save.Enabled = hasChanges && !hasPortError;
            }

            string CanonicalList(string value) => string.Join(";", ParseList(value));
        }
    }

    static readonly JsonSerializerOptions JsonOptions = new() { WriteIndented = true };
    static SettingsData settings = CreateInitialSettings();
    static bool initialized;

    public static Logger logger = new Logger("HaxeBox");
    private static Builder? builder;
    
    public static string path = DefaultLibraryPath;
    public static string root = "";
    public static Project project = null!;
    public static (bool whitelist, bool release, HashSet<string> symbols) config = (true, true, []);

    public static string[] GetClsPaths() => NormalizePaths(ParseList(settings.ClsPaths));

    public static string GetOutPath() => NormalizeConfiguredPath(settings.OutPath);
    
    public static string[] GetLibraries() => ParseList(settings.Libraries);
    
    public static string[] GetExclude() => ParseList(settings.Exclude);

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

            if (settings.HotloadEnabled)
                EnsureBuilder().Resume();

            Editor.Application.OnWidgetClicked += OnWidgetClicked;
        } catch (Exception e) {
            logger.Error("Failed to start HaxeBox: " + e.ToString());
        }
    }

    [Event("app.exit")]
    private static void OnExit() {
        var activeBuilder = builder;
        builder = null;
        Editor.Application.OnWidgetClicked -= OnWidgetClicked;
        if (activeBuilder != null) {
            ThreadPool.QueueUserWorkItem(_ => {
                try {
                    activeBuilder.Dispose();
                } catch (Exception e) {
                    logger.Warning("Failed to dispose builder on exit: " + e.Message);
                }
            });
        }
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

    private static void ClearOutput() {
        try {
            var outPath = ResolveProjectPath(GetOutPath());
            if (IsUnsafeOutputPath(outPath)) {
                logger.Warning("Output path points to project root. Clear output cancelled.");
                return;
            }
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

        var currentProject = Project.Current;
        if (currentProject == null)
            return false;

        project = currentProject;
        root = project.GetRootPath() ?? root;
        path = FindPath();
        LoadSettings();

        initialized = true;
        return true;
    }

    private static Builder EnsureBuilder() {
        builder ??= new Builder(settings.BuildServerPort, GetHaxeCommand(), GetClsPaths(), GetOutPath(), GetExclude());
        builder.ApplySettings(settings.BuildServerPort, GetHaxeCommand(), GetClsPaths(), GetOutPath(), GetExclude());
        return builder;
    }

    private static void ApplyBuilderSettings(bool rebuild = false) {
        MainThread.Queue(() => {
            try {
                var activeBuilder = EnsureBuilder();
                activeBuilder.ApplySettings(settings.BuildServerPort, GetHaxeCommand(), GetClsPaths(), GetOutPath(), GetExclude());
                if (rebuild)
                    activeBuilder.BuildAsync();
            } catch (Exception e) {
                logger.Warning("Failed to apply builder settings: " + e.Message);
            }
        });
    }

    private static string GetSettingsPath() => string.IsNullOrEmpty(root) ? "" : Path.Combine(root, SettingsFileName);

    private static string GetHaxeCommand() => string.IsNullOrWhiteSpace(settings.HaxePath) ? "haxe" : settings.HaxePath.Trim();

    private static string NormalizeConfiguredPath(string? configured) => (configured?.Trim() ?? "").Replace('\\', '/').Trim('/');

    private static string[] ParseList(string? value) {
        return (value ?? "").Split(new[] { ';', ',' }, StringSplitOptions.RemoveEmptyEntries | StringSplitOptions.TrimEntries);
    }

    private static string[] NormalizePaths(string[] paths) {
        var result = new List<string>(paths.Length);
        var unique = new HashSet<string>(StringComparer.OrdinalIgnoreCase);
        foreach (var path in paths) {
            var normalized = path.Trim().Replace('\\', '/');
            if (!string.IsNullOrWhiteSpace(normalized) && unique.Add(normalized))
                result.Add(normalized);
        }
        return result.ToArray();
    }

    private static SettingsData CreateInitialSettings() {
        return new SettingsData {
            BuildServerPort = 6060,
            HaxePath = "",
            ClsPaths = "code",
            OutPath = "code/__haxe__",
            Libraries = "",
            Exclude = "",
            HotloadEnabled = false
        };
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
            if (IsUnsafeOutputPath(oldOutAbs)) {
                logger.Warning("Skipping deletion of unsafe output path: " + oldOutAbs);
                return;
            }
            if (Directory.Exists(oldOutAbs)) {
                Directory.Delete(oldOutAbs, true);
                logger.Info("Removed previous output: " + oldOutAbs);
            }
        } catch (Exception e) {
            logger.Warning("Failed to remove previous output: " + e.Message);
        }
    }

    private static bool IsUnsafeOutputPath(string absolutePath) {
        var full = Path.GetFullPath(absolutePath);
        var projectRoot = Path.GetFullPath(root);
        if (string.Equals(full, projectRoot, StringComparison.OrdinalIgnoreCase))
            return true;
        var volumeRoot = Path.GetPathRoot(full);
        return !string.IsNullOrEmpty(volumeRoot) &&
               string.Equals(full.TrimEnd('\\', '/'), volumeRoot.TrimEnd('\\', '/'), StringComparison.OrdinalIgnoreCase);
    }

    private static void LoadSettings() {
        var settingsPath = GetSettingsPath();
        if (string.IsNullOrEmpty(settingsPath))
            return;

        try {
            if (!File.Exists(settingsPath)) {
                SaveSettings();
                return;
            }

            var json = File.ReadAllText(settingsPath);
            var loaded = JsonSerializer.Deserialize<SettingsData>(json);
            if (loaded != null) {
                settings = loaded;
                if (string.IsNullOrWhiteSpace(settings.ClsPaths)) {
                    using var doc = JsonDocument.Parse(json);
                    if (doc.RootElement.TryGetProperty("SrcPath", out var legacySrcPath) &&
                        legacySrcPath.ValueKind == JsonValueKind.String)
                        settings.ClsPaths = legacySrcPath.GetString() ?? "";
                }
            }
        } catch (Exception e) {
            logger.Warning("Failed to load settings: " + e.Message);
        }
    }

    private static void SaveSettings() {
        var settingsPath = GetSettingsPath();
        if (string.IsNullOrEmpty(settingsPath))
            return;

        try {
            var json = JsonSerializer.Serialize(settings, JsonOptions);
            File.WriteAllText(settingsPath, json);
            logger.Info("Settings updated");
        } catch (Exception e) {
            logger.Warning("Failed to save settings: " + e.Message);
        }
    }

    static string FindPath() {
        var fs = Editor.FileSystem.Libraries;
        foreach (var rel in fs.FindFile("", "haxebox.sbproj", recursive: true)) {
            var full = fs.GetFullPath(rel);
            if (!string.IsNullOrEmpty(full))
                return Path.GetDirectoryName(full)!;
            break;
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
