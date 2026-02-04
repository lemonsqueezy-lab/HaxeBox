package sandbox.internal;

@:native("Sandbox.Internal.GlobalToolsNamespace")
final extern class GlobalToolsNamespace {
    static var EditorWindow(default,never):editor.EditorMainWindow;
    static var EditorCookie(default,never):sandbox.CookieContainer;
    static var ProjectCookie(default,never):sandbox.CookieContainer;
    static var BindSystem(default,never):sandbox.bind.BindSystem;
    static var EditorTypeLibrary(default,never):sandbox.internal.TypeLibrary;
    static var EditorNodeLibrary(default,never):facepunch.actiongraphs.NodeLibrary;
    static var EditorJsonOptions(default,never):system.text.json.JsonSerializerOptions;
}
