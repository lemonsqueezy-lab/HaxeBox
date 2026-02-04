package sandbox.splineutils;

@:native("Sandbox.SplineUtils.SegmentParams")
final extern class SegmentParams {
    var Index(default,set):Int;

    private inline function set_Index(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Index = {1}", this, __value);
    }

    var T(default,set):Single;

    private inline function set_T(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.T = {1}", this, __value);
    }

}
