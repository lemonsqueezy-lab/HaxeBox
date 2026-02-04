package sandbox.diagnostics.gceventlistener;

@:native("Sandbox.Diagnostics.GCEventListener.Stats")
final extern class Stats {
    var Count(default,set):system.UInt64;

    private inline function set_Count(value:system.UInt64):system.UInt64 {
        var __value:system.UInt64 = cast value;
        return untyped __cs__("{0}.Count = {1}", this, __value);
    }

    var Bytes(default,set):system.UInt64;

    private inline function set_Bytes(value:system.UInt64):system.UInt64 {
        var __value:system.UInt64 = cast value;
        return untyped __cs__("{0}.Bytes = {1}", this, __value);
    }

}
