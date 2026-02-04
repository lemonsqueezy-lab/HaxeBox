package sandbox.spline;

/** Information about the spline at a specific distance. */
@:native("Sandbox.Spline.Sample")
final extern class Sample {
    var Position(default,set):Vector3;

    private inline function set_Position(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Position = {1}", this, __value);
    }

    var Tangent(default,set):Vector3;

    private inline function set_Tangent(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Tangent = {1}", this, __value);
    }

    var Roll(default,set):Single;

    private inline function set_Roll(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Roll = {1}", this, __value);
    }

    var Scale(default,set):Vector3;

    private inline function set_Scale(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Scale = {1}", this, __value);
    }

    var Up(default,set):Vector3;

    private inline function set_Up(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Up = {1}", this, __value);
    }

    var Distance(default,set):Single;

    private inline function set_Distance(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Distance = {1}", this, __value);
    }

}
