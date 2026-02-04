package sandbox.moviemaker.compiled;

@:native("Sandbox.MovieMaker.Compiled.CompiledSampleBlock`1")
final extern class CompiledSampleBlock<T> {
    function new(TimeRange:sandbox.moviemaker.MovieTimeRange, Offset:sandbox.moviemaker.MovieTime, SampleRate:Int, Samples:system.collections.immutable.ImmutableArray<T>):Void;
    var TimeRange(default,default):sandbox.moviemaker.MovieTimeRange;
    var Offset(default,default):sandbox.moviemaker.MovieTime;
    var SampleRate(default,default):Int;
    var Samples(default,default):system.collections.immutable.ImmutableArray<T>;
    function Deconstruct(TimeRange:sandbox.moviemaker.MovieTimeRange, Offset:sandbox.moviemaker.MovieTime, SampleRate:Int, Samples:system.collections.immutable.ImmutableArray<T>):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.moviemaker.compiled.CompiledSampleBlock<T>):Bool;
    function GetHashCode():Int;
    function GetValue(time:sandbox.moviemaker.MovieTime):T;
    function Shift(offset:sandbox.moviemaker.MovieTime):sandbox.moviemaker.compiled.ICompiledPropertyBlock<T>;
    function ToString():String;
}
