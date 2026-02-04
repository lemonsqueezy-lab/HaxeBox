package sandbox;

/** Represents a floating-point value that can change over time with support for various evaluation modes. */
@:native("Sandbox.ParticleFloat")
final extern class ParticleFloat {
    overload function new():Void;
    overload function new(a:Single, b:Single):Void;
    var Type(default,set):sandbox.particlefloat.ValueType;

    private inline function set_Type(value:sandbox.particlefloat.ValueType):sandbox.particlefloat.ValueType {
        var __value:sandbox.particlefloat.ValueType = cast value;
        return untyped __cs__("{0}.Type = {1}", this, __value);
    }

    var Evaluation(default,set):sandbox.particlefloat.EvaluationType;

    private inline function set_Evaluation(value:sandbox.particlefloat.EvaluationType):sandbox.particlefloat.EvaluationType {
        var __value:sandbox.particlefloat.EvaluationType = cast value;
        return untyped __cs__("{0}.Evaluation = {1}", this, __value);
    }

    var CurveA(default,set):sandbox.Curve;

    private inline function set_CurveA(value:sandbox.Curve):sandbox.Curve {
        var __value:sandbox.Curve = cast value;
        return untyped __cs__("{0}.CurveA = {1}", this, __value);
    }

    var CurveB(default,set):sandbox.Curve;

    private inline function set_CurveB(value:sandbox.Curve):sandbox.Curve {
        var __value:sandbox.Curve = cast value;
        return untyped __cs__("{0}.CurveB = {1}", this, __value);
    }

    var ConstantValue(default,set):Single;

    private inline function set_ConstantValue(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.ConstantValue = {1}", this, __value);
    }

    var ConstantA(default,set):Single;

    private inline function set_ConstantA(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.ConstantA = {1}", this, __value);
    }

    var ConstantB(default,set):Single;

    private inline function set_ConstantB(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.ConstantB = {1}", this, __value);
    }

    var CurveRange(default,set):sandbox.CurveRange;

    private inline function set_CurveRange(value:sandbox.CurveRange):sandbox.CurveRange {
        var __value:sandbox.CurveRange = cast value;
        return untyped __cs__("{0}.CurveRange = {1}", this, __value);
    }

    var Constants(default,set):Vector4;

    private inline function set_Constants(value:Vector4):Vector4 {
        var __value:Vector4 = cast value;
        return untyped __cs__("{0}.Constants = {1}", this, __value);
    }

    /** Evaluates the value using a dynamic context and seed, optimized for clarity and functionality. */
    overload function Evaluate(delta:Single, randomFixed:Single):Single;
    overload function Evaluate(context:sandbox.IDynamicFloatContext, seed:Int, line:Int):Single;
    /** This is only here to remain "compatible" with RangedFloat */
    function GetValue():Single;
    /** Checks if the value is nearly zero. */
    function IsNearlyZero():Bool;
    static function JsonRead(reader:system.text.json.Utf8JsonReader, typeToConvert:cs.system.Type):cs.system.Object;
    /** Writes a ParticleFloat instance to JSON, refactored for modularity. */
    static function JsonWrite(value:cs.system.Object, writer:system.text.json.Utf8JsonWriter):Void;
}
