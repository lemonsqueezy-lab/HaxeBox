package sandbox.moviemaker.compiled;

@:native("Sandbox.MovieMaker.Compiled.CompiledConstantBlock`1")
final extern class CompiledConstantBlock<T> {
    overload function new(timeRange:sandbox.moviemaker.MovieTimeRange, value:T):Void;
    overload function new(TimeRange:sandbox.moviemaker.MovieTimeRange, Serialized:system.text.json.nodes.JsonNode):Void;
    var TimeRange(default,default):sandbox.moviemaker.MovieTimeRange;
    var Serialized(default,default):system.text.json.nodes.JsonNode;
    function Deconstruct(TimeRange:sandbox.moviemaker.MovieTimeRange, Serialized:system.text.json.nodes.JsonNode):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.moviemaker.compiled.CompiledConstantBlock<T>):Bool;
    function GetHashCode():Int;
    function GetValue(time:sandbox.moviemaker.MovieTime):T;
    function Shift(offset:sandbox.moviemaker.MovieTime):sandbox.moviemaker.compiled.ICompiledPropertyBlock<T>;
    function ToString():String;
}
