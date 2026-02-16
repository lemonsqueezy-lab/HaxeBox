package sandbox.navigation.generation.polymeshbuilder;

/** Edge hash map using parallel arrays with separate chaining. Enables O(1) lookup of polygon edges for merge candidate search. */
@:native("Sandbox.Navigation.Generation.PolyMeshBuilder.PolyMeshBuilderContext")
final extern class PolyMeshBuilderContext {
    function new():Void;
    var Buckets(default,default):system.collections.generic.List<Int>;
    var PolyIndices(default,default):system.collections.generic.List<Int>;
    var EdgeIndices(default,default):system.collections.generic.List<Int>;
    var V0s(default,default):system.collections.generic.List<Int>;
    var V1s(default,default):system.collections.generic.List<Int>;
    var Nexts(default,default):system.collections.generic.List<Int>;
    function Build(polys:system.Span<Int>, npolys:Int, maxVerts:Int):Void;
    function GetBucket(v0:Int, v1:Int):Int;
    function TryGet(idx:Int, ev0:Int, ev1:Int, poly:Int, edge:Int, next:Int):Bool;
}
