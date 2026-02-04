package sandbox.moviemaker.compiled;

@:native("Sandbox.MovieMaker.Compiled.CompiledActionTrack")
final extern class CompiledActionTrack {
    function new(Name:String, TargetType:cs.system.Type, Parent:sandbox.moviemaker.compiled.ICompiledTrack, Blocks:system.collections.immutable.ImmutableArray<sandbox.moviemaker.compiled.CompiledActionBlock>):Void;
    var Name(default,default):String;
    var TargetType(default,default):cs.system.Type;
    var Parent(default,default):sandbox.moviemaker.compiled.ICompiledTrack;
    var Blocks(default,default):system.collections.immutable.ImmutableArray<sandbox.moviemaker.compiled.CompiledActionBlock>;
    function Deconstruct(Name:String, TargetType:cs.system.Type, Parent:sandbox.moviemaker.compiled.ICompiledTrack, Blocks:system.collections.immutable.ImmutableArray<sandbox.moviemaker.compiled.CompiledActionBlock>):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.moviemaker.compiled.CompiledActionTrack):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
