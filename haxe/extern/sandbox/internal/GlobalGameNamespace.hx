package sandbox.internal;

@:native("Sandbox.Internal.GlobalGameNamespace")
final extern class GlobalGameNamespace {
    /** Log information to console for debugging purposes. */
    static var Log(default,never):sandbox.diagnostics.Logger;
    /** Data storage that persists across sessions. */
    static var Cookie(default,never):sandbox.CookieContainer;
    /** Allows access to all available types, reflection style. */
    static var TypeLibrary(default,never):sandbox.internal.TypeLibrary;
}
