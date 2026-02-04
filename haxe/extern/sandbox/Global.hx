package sandbox;

/** Utility info for tools usage. */
@:native("Sandbox.Global")
final extern class Global {
    /** Are we connected to the API? (If not, offline mode. Requires Steam Servers to be online to connect..) */
    static var IsApiConnected(default,never):Bool;
}
