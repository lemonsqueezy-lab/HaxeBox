package sandbox.navigation.generation.regionbuilder;

/** Reusable context for region building. Cache and reuse to avoid allocations. */
@:native("Sandbox.Navigation.Generation.RegionBuilder.RegionBuilderContext")
final extern class RegionBuilderContext {
    function new():Void;
    var SpanCounts(default,default):system.collections.generic.List<Int>;
    var Ids(default,default):system.collections.generic.List<Int>;
    var Areas(default,default):system.collections.generic.List<Int>;
    var YMins(default,default):system.collections.generic.List<Int>;
    var YMaxs(default,default):system.collections.generic.List<Int>;
    var Flags(default,default):system.collections.generic.List<Int>;
    var Connections(default,default):system.collections.generic.List<system.collections.generic.List<Int>>;
    var Floors(default,default):system.collections.generic.List<system.collections.generic.List<Int>>;
    var LRegs(default,default):system.collections.generic.List<Int>;
    var Stack(default,default):system.collections.generic.List<Int>;
    function Init(n:Int):Void;
}
