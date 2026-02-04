package sandbox.spline;

/** Point that defines part of the spline. Two consecutive points define a segment of the spline. The , / Handles and / properties are used to define the shape of the spline. P1 (Position) P1 (In) ▼ P1 (Out) o──────═══X═══──────o ───/ \─── ──/ \── -/ \- / \ | | P0 X X P2 */
@:native("Sandbox.Spline.Point")
final extern class Point {
    function new():Void;
    var Position(default,set):Vector3;

    private inline function set_Position(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Position = {1}", this, __value);
    }

    var In(default,set):Vector3;

    private inline function set_In(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.In = {1}", this, __value);
    }

    var Out(default,set):Vector3;

    private inline function set_Out(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Out = {1}", this, __value);
    }

    var Mode(default,set):sandbox.spline.HandleMode;

    private inline function set_Mode(value:sandbox.spline.HandleMode):sandbox.spline.HandleMode {
        var __value:sandbox.spline.HandleMode = cast value;
        return untyped __cs__("{0}.Mode = {1}", this, __value);
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

    function ToString():String;
}
