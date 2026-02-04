package sandbox.diagnostics.performancestats;

@:native("Sandbox.Diagnostics.PerformanceStats.Block")
final extern class Block {
    var FrameAvg(default,set):Single;

    private inline function set_FrameAvg(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.FrameAvg = {1}", this, __value);
    }

    var FrameMin(default,set):Single;

    private inline function set_FrameMin(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.FrameMin = {1}", this, __value);
    }

    var FrameMax(default,set):Single;

    private inline function set_FrameMax(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.FrameMax = {1}", this, __value);
    }

    var ByteAlloc(default,set):haxe.Int64;

    private inline function set_ByteAlloc(value:haxe.Int64):haxe.Int64 {
        var __value:haxe.Int64 = cast value;
        return untyped __cs__("{0}.ByteAlloc = {1}", this, __value);
    }

    var Gc0(default,set):Int;

    private inline function set_Gc0(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Gc0 = {1}", this, __value);
    }

    var Gc1(default,set):Int;

    private inline function set_Gc1(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Gc1 = {1}", this, __value);
    }

    var Gc2(default,set):Int;

    private inline function set_Gc2(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Gc2 = {1}", this, __value);
    }

    var GcPause(default,set):haxe.Int64;

    private inline function set_GcPause(value:haxe.Int64):haxe.Int64 {
        var __value:haxe.Int64 = cast value;
        return untyped __cs__("{0}.GcPause = {1}", this, __value);
    }

}
