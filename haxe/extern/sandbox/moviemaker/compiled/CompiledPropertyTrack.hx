package sandbox.moviemaker.compiled;

@:native("Sandbox.MovieMaker.Compiled.CompiledPropertyTrack`1")
final extern class CompiledPropertyTrack<T> {
    overload function new(name:String, parent:sandbox.moviemaker.compiled.ICompiledTrack, blocks:system.collections.generic.IEnumerable<sandbox.moviemaker.compiled.ICompiledPropertyBlock<Dynamic>>):Void;
    overload function new(Name:String, Parent:sandbox.moviemaker.compiled.ICompiledTrack, Blocks:system.collections.immutable.ImmutableArray<sandbox.moviemaker.compiled.ICompiledPropertyBlock<T>>):Void;
    var Name(default,default):String;
    var Parent(default,default):sandbox.moviemaker.compiled.ICompiledTrack;
    var Blocks(default,default):system.collections.immutable.ImmutableArray<sandbox.moviemaker.compiled.ICompiledPropertyBlock<T>>;
    function Deconstruct(Name:String, Parent:sandbox.moviemaker.compiled.ICompiledTrack, Blocks:system.collections.immutable.ImmutableArray<sandbox.moviemaker.compiled.ICompiledPropertyBlock<T>>):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.moviemaker.compiled.CompiledPropertyTrack<T>):Bool;
    function GetBlock(time:sandbox.moviemaker.MovieTime):sandbox.moviemaker.compiled.ICompiledPropertyBlock<T>;
    function GetHashCode():Int;
    function ToString():String;
    function TryGetValue(time:sandbox.moviemaker.MovieTime, value:T):Bool;
}
