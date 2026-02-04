package sandbox.moviemaker.compiled;

@:native("Sandbox.MovieMaker.Compiled.CompiledReferenceTrack`1")
final extern class CompiledReferenceTrack<T> {
    function new(Id:system.Guid, Name:String, Parent:sandbox.moviemaker.compiled.CompiledReferenceTrack<sandbox.GameObject>, ReferenceId:Null<system.Guid>):Void;
    var Id(default,default):system.Guid;
    var Name(default,default):String;
    var Parent(default,default):sandbox.moviemaker.compiled.CompiledReferenceTrack<sandbox.GameObject>;
    var ReferenceId(default,default):Null<system.Guid>;
    function Deconstruct(Id:system.Guid, Name:String, Parent:sandbox.moviemaker.compiled.CompiledReferenceTrack<sandbox.GameObject>, ReferenceId:Null<system.Guid>):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.moviemaker.compiled.CompiledReferenceTrack<T>):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
