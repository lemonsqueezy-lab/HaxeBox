package sandbox.services;

@:native("Sandbox.Services.BenchmarkRecord")
final extern class BenchmarkRecord {
    var Name(default,set):String;

    private inline function set_Name(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Name = {1}", this, __value);
    }

    var Duration(default,set):Float;

    private inline function set_Duration(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.Duration = {1}", this, __value);
    }

    var Data(default,set):system.collections.generic.Dictionary<String,cs.system.Object>;

    private inline function set_Data(value:system.collections.generic.Dictionary<String,cs.system.Object>):system.collections.generic.Dictionary<String,cs.system.Object> {
        var __value:system.collections.generic.Dictionary<String,cs.system.Object> = cast value;
        return untyped __cs__("{0}.Data = {1}", this, __value);
    }

}
