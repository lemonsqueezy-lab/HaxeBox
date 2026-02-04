package sandbox.moviemaker.compiled;

/** Unused, will describe starting / stopping an action in the scene. */
@:native("Sandbox.MovieMaker.Compiled.CompiledActionBlock")
final extern class CompiledActionBlock {
    /** Unused, will describe starting / stopping an action in the scene. */
    function new(TimeRange:sandbox.moviemaker.MovieTimeRange):Void;
    /** Start and end time of this block. */
    var TimeRange(default,default):sandbox.moviemaker.MovieTimeRange;
    function Deconstruct(TimeRange:sandbox.moviemaker.MovieTimeRange):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.moviemaker.compiled.CompiledActionBlock):Bool;
    function GetHashCode():Int;
    function Shift(offset:sandbox.moviemaker.MovieTime):sandbox.moviemaker.compiled.ICompiledBlock;
    function ToString():String;
}
