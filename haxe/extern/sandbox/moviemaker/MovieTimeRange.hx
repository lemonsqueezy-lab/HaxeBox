package sandbox.moviemaker;

/** Represents a segment of time, given by and times. */
@:native("Sandbox.MovieMaker.MovieTimeRange")
final extern class MovieTimeRange {
    /** Represents a segment of time, given by and times. */
    function new(Start:sandbox.moviemaker.MovieTime, End:sandbox.moviemaker.MovieTime):Void;
    /** Minimum time in the range. */
    var Start(default,set):sandbox.moviemaker.MovieTime;

    private inline function set_Start(value:sandbox.moviemaker.MovieTime):sandbox.moviemaker.MovieTime {
        var __value:sandbox.moviemaker.MovieTime = cast value;
        return untyped __cs__("{0}.Start = {1}", this, __value);
    }

    /** Maximum time in the range. */
    var End(default,set):sandbox.moviemaker.MovieTime;

    private inline function set_End(value:sandbox.moviemaker.MovieTime):sandbox.moviemaker.MovieTime {
        var __value:sandbox.moviemaker.MovieTime = cast value;
        return untyped __cs__("{0}.End = {1}", this, __value);
    }

    var Duration(default,never):sandbox.moviemaker.MovieTime;
    var Center(default,never):sandbox.moviemaker.MovieTime;
    var IsEmpty(default,never):Bool;
    function Clamp(range:Null<sandbox.moviemaker.MovieTimeRange>):sandbox.moviemaker.MovieTimeRange;
    function ClampEnd(end:Null<sandbox.moviemaker.MovieTime>):sandbox.moviemaker.MovieTimeRange;
    function ClampStart(start:Null<sandbox.moviemaker.MovieTime>):sandbox.moviemaker.MovieTimeRange;
    overload function Contains(time:sandbox.moviemaker.MovieTime):Bool;
    overload function Contains(timeRange:sandbox.moviemaker.MovieTimeRange):Bool;
    function Deconstruct(Start:sandbox.moviemaker.MovieTime, End:sandbox.moviemaker.MovieTime):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.moviemaker.MovieTimeRange):Bool;
    function GetFraction(time:sandbox.moviemaker.MovieTime):Single;
    function GetHashCode():Int;
    overload function GetSampleTimes(sampleRate:Int):system.collections.generic.IEnumerable<sandbox.moviemaker.MovieTime>;
    overload function GetSampleTimes(firstSampleTime:sandbox.moviemaker.MovieTime, sampleCount:Int, sampleRate:Int):system.collections.generic.IEnumerable<sandbox.moviemaker.MovieTime>;
    overload function Grow(startEndDelta:sandbox.moviemaker.MovieTime):sandbox.moviemaker.MovieTimeRange;
    overload function Grow(startDelta:sandbox.moviemaker.MovieTime, endDelta:sandbox.moviemaker.MovieTime):sandbox.moviemaker.MovieTimeRange;
    function Intersect(other:sandbox.moviemaker.MovieTimeRange):Null<sandbox.moviemaker.MovieTimeRange>;
    function ToString():String;
    function Union(other:Null<sandbox.moviemaker.MovieTimeRange>):sandbox.moviemaker.MovieTimeRange;
}
