package sandbox.diagnostics.allocations;

@:native("Sandbox.Diagnostics.Allocations.Entry")
final extern class Entry {
    var Name(default,set):String;

    private inline function set_Name(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Name = {1}", this, __value);
    }

    var Count(default,set):system.UInt64;

    private inline function set_Count(value:system.UInt64):system.UInt64 {
        var __value:system.UInt64 = cast value;
        return untyped __cs__("{0}.Count = {1}", this, __value);
    }

    var TotalBytes(default,set):system.UInt64;

    private inline function set_TotalBytes(value:system.UInt64):system.UInt64 {
        var __value:system.UInt64 = cast value;
        return untyped __cs__("{0}.TotalBytes = {1}", this, __value);
    }

}
