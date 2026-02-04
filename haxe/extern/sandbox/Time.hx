package sandbox;

@:native("Sandbox.Time")
extern class Time {
    function new():Void;
    /** The time since game startup */
    static var Now(default,default):Single;
    /** The delta between the last frame and the current (for all intents and purposes) */
    static var Delta(default,default):Single;
    static function Scope(now:Float, delta:Float):system.IDisposable;
}
