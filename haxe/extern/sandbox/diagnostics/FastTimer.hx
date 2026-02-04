package sandbox.diagnostics;

/** A lightweight, high-resolution timer for performance measurement. More efficient than with a simpler API. */
@:native("Sandbox.Diagnostics.FastTimer")
final extern class FastTimer {
    /** Gets the timestamp when the timer was started. */
    var StartTick(default,never):haxe.Int64;
    /** Gets the number of ticks elapsed since the timer was started. */
    var ElapsedTicks(default,never):haxe.Int64;
    /** Gets the number of microseconds elapsed since the timer was started. */
    var ElapsedMicroSeconds(default,never):Float;
    /** Gets the number of milliseconds elapsed since the timer was started. */
    var ElapsedMilliSeconds(default,never):Float;
    /** Gets the number of seconds elapsed since the timer was started. */
    var ElapsedSeconds(default,never):Float;
    /** Gets the time elapsed since the timer was started as a TimeSpan. */
    var Elapsed(default,never):system.TimeSpan;
    /** Starts or restarts the timer. */
    function Start():Void;
    /** Creates and starts a new FastTimer. */
    static function StartNew():sandbox.diagnostics.FastTimer;
}
