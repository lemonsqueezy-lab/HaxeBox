package sandbox.diagnostics.performancestats.timings;

@:native("Sandbox.Diagnostics.PerformanceStats.Timings.Frame")
final extern class Frame {
    var Calls(default,set):Int;

    private inline function set_Calls(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Calls = {1}", this, __value);
    }

    var TotalMs(default,set):Single;

    private inline function set_TotalMs(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.TotalMs = {1}", this, __value);
    }

}
