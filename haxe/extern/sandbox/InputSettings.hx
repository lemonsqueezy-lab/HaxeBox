package sandbox;

/** A class that holds all configured input settings for a game. This is serialized as a config and shared from the server to the client. */
@:native("Sandbox.InputSettings")
extern class InputSettings {
    function new():Void;
    /** A list of actions used by the game. */
    var Actions(default,default):system.collections.generic.List<sandbox.InputAction>;
    var Guid(default,default):system.Guid;
    var Version(default,never):Int;
    function InitDefault():Void;
}
