package sandbox;

/** Two curves */
@:native("Sandbox.CurveRange")
final extern class CurveRange {
    overload function new():Void;
    overload function new(a:sandbox.Curve, b:sandbox.Curve):Void;
    var A(default,set):sandbox.Curve;

    private inline function set_A(value:sandbox.Curve):sandbox.Curve {
        var __value:sandbox.Curve = cast value;
        return untyped __cs__("{0}.A = {1}", this, __value);
    }

    var B(default,set):sandbox.Curve;

    private inline function set_B(value:sandbox.Curve):sandbox.Curve {
        var __value:sandbox.Curve = cast value;
        return untyped __cs__("{0}.B = {1}", this, __value);
    }

    function Evaluate(x:Single, y:Single):Single;
    function EvaluateDelta(x:Single, y:Single):Single;
}
