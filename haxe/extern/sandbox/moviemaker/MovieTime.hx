package sandbox.moviemaker;

/** Represents a duration of time in a movie. Uses fixed point so precision is consistent at any absolute time. Defaults to . */
@:native("Sandbox.MovieMaker.MovieTime")
final extern class MovieTime {
    static var Zero(default,never):sandbox.moviemaker.MovieTime;
    static var Epsilon(default,never):sandbox.moviemaker.MovieTime;
    static var MinValue(default,never):sandbox.moviemaker.MovieTime;
    static var MaxValue(default,never):sandbox.moviemaker.MovieTime;
    /** Frame rates <= 120 that can be perfectly represented by , in ascending order. Venturing outside these rates will lead to some frames being slightly different durations than others. */
    static var SupportedFrameRates(default,never):system.collections.generic.IReadOnlyList<Int>;
    var Ticks(default,never):Int;
    var IsZero(default,never):Bool;
    var IsPositive(default,never):Bool;
    var IsNegative(default,never):Bool;
    var TotalSeconds(default,never):Float;
    var Absolute(default,never):sandbox.moviemaker.MovieTime;
    static final TickRate:Int;
    function Clamp(range:Null<sandbox.moviemaker.MovieTimeRange>):sandbox.moviemaker.MovieTime;
    function CompareTo(other:sandbox.moviemaker.MovieTime):Int;
    static function Distance(a:sandbox.moviemaker.MovieTime, b:sandbox.moviemaker.MovieTime):sandbox.moviemaker.MovieTime;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.moviemaker.MovieTime):Bool;
    function Floor(gridInterval:sandbox.moviemaker.MovieTime):sandbox.moviemaker.MovieTime;
    static function FromFrames(frameCount:Int, frameRate:Int):sandbox.moviemaker.MovieTime;
    static function FromSeconds(time:Float):sandbox.moviemaker.MovieTime;
    static function FromTicks(ticks:Int):sandbox.moviemaker.MovieTime;
    function GetFraction(time:sandbox.moviemaker.MovieTime):Single;
    /** Given a , how many frames would need to be allocated to represent every moment of time up until now. This is always at least 1, and will be 1 more than unless this time is exactly on a frame boundary. */
    function GetFrameCount(frameRate:Int):Int;
    /** Given a , how many frames have passed before reaching this time. */
    overload function GetFrameIndex(frameRate:Int):Int;
    overload function GetFrameIndex(frameInterval:sandbox.moviemaker.MovieTime):Int;
    overload function GetFrameIndex(frameRate:Int, remainder:sandbox.moviemaker.MovieTime):Int;
    overload function GetFrameIndex(frameInterval:sandbox.moviemaker.MovieTime, remainder:sandbox.moviemaker.MovieTime):Int;
    function GetHashCode():Int;
    static function Lerp(a:sandbox.moviemaker.MovieTime, b:sandbox.moviemaker.MovieTime, fraction:Float):sandbox.moviemaker.MovieTime;
    static function Max(a:sandbox.moviemaker.MovieTime, b:sandbox.moviemaker.MovieTime):sandbox.moviemaker.MovieTime;
    static function Min(a:sandbox.moviemaker.MovieTime, b:sandbox.moviemaker.MovieTime):sandbox.moviemaker.MovieTime;
    function Round(gridInterval:sandbox.moviemaker.MovieTime):sandbox.moviemaker.MovieTime;
    function ToString():String;
}
