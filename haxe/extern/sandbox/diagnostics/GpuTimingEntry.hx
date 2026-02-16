package sandbox.diagnostics;

/** GPU timing data for a single render pass/group */
@:native("Sandbox.Diagnostics.GpuTimingEntry")
final extern class GpuTimingEntry {
    var Name(default,set):String;

    private inline function set_Name(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Name = {1}", this, __value);
    }

    var DurationMs(default,set):Single;

    private inline function set_DurationMs(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.DurationMs = {1}", this, __value);
    }

}
