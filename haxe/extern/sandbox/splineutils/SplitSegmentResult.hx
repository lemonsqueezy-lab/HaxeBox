package sandbox.splineutils;

@:native("Sandbox.SplineUtils.SplitSegmentResult")
final extern class SplitSegmentResult {
    var Left(default,set):sandbox.spline.Point;

    private inline function set_Left(value:sandbox.spline.Point):sandbox.spline.Point {
        var __value:sandbox.spline.Point = cast value;
        return untyped __cs__("{0}.Left = {1}", this, __value);
    }

    var Mid(default,set):sandbox.spline.Point;

    private inline function set_Mid(value:sandbox.spline.Point):sandbox.spline.Point {
        var __value:sandbox.spline.Point = cast value;
        return untyped __cs__("{0}.Mid = {1}", this, __value);
    }

    var Right(default,set):sandbox.spline.Point;

    private inline function set_Right(value:sandbox.spline.Point):sandbox.spline.Point {
        var __value:sandbox.spline.Point = cast value;
        return untyped __cs__("{0}.Right = {1}", this, __value);
    }

}
