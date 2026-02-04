package sandbox;

@:native("Sandbox.StandaloneManifest")
extern class StandaloneManifest {
    function new():Void;
    /** What is the game's name? */
    var Name(default,default):String;
    /** What ident are we running under? */
    var Ident(default,default):String;
    /** Game's executable name (e.g. game.exe) */
    var ExecutableName(default,default):String;
    /** The Steam App ID of the game */
    var AppId(default,default):system.UInt64;
    /** Game's build date, automatically set when the game was exported. */
    var BuildDate(default,default):system.DateTime;
    /** Should we automatically launch this project in VR? */
    var IsVRProject(default,default):Bool;
}
