package sandbox.navigation.generation.regionbuilder;

@:native("Sandbox.Navigation.Generation.RegionBuilder.SweepSpan")
final extern class SweepSpan {
    var Rid(default,set):Int;

    private inline function set_Rid(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Rid = {1}", this, __value);
    }

    var Id(default,set):Int;

    private inline function set_Id(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Id = {1}", this, __value);
    }

    var Ns(default,set):Int;

    private inline function set_Ns(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Ns = {1}", this, __value);
    }

    var Nei(default,set):Int;

    private inline function set_Nei(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Nei = {1}", this, __value);
    }

}
