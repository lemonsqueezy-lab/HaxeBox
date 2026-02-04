package sandbox;

@:native("Sandbox.ParticleGradient")
final extern class ParticleGradient {
    function new():Void;
    var Type(default,set):sandbox.particlegradient.ValueType;

    private inline function set_Type(value:sandbox.particlegradient.ValueType):sandbox.particlegradient.ValueType {
        var __value:sandbox.particlegradient.ValueType = cast value;
        return untyped __cs__("{0}.Type = {1}", this, __value);
    }

    var Evaluation(default,set):sandbox.particlegradient.EvaluationType;

    private inline function set_Evaluation(value:sandbox.particlegradient.EvaluationType):sandbox.particlegradient.EvaluationType {
        var __value:sandbox.particlegradient.EvaluationType = cast value;
        return untyped __cs__("{0}.Evaluation = {1}", this, __value);
    }

    var GradientA(default,set):sandbox.Gradient;

    private inline function set_GradientA(value:sandbox.Gradient):sandbox.Gradient {
        var __value:sandbox.Gradient = cast value;
        return untyped __cs__("{0}.GradientA = {1}", this, __value);
    }

    var GradientB(default,set):sandbox.Gradient;

    private inline function set_GradientB(value:sandbox.Gradient):sandbox.Gradient {
        var __value:sandbox.Gradient = cast value;
        return untyped __cs__("{0}.GradientB = {1}", this, __value);
    }

    var ConstantA(default,set):Color;

    private inline function set_ConstantA(value:Color):Color {
        var __value:Color = cast value;
        return untyped __cs__("{0}.ConstantA = {1}", this, __value);
    }

    var ConstantB(default,set):Color;

    private inline function set_ConstantB(value:Color):Color {
        var __value:Color = cast value;
        return untyped __cs__("{0}.ConstantB = {1}", this, __value);
    }

    var ConstantValue(default,set):Color;

    private inline function set_ConstantValue(value:Color):Color {
        var __value:Color = cast value;
        return untyped __cs__("{0}.ConstantValue = {1}", this, __value);
    }

    overload function Evaluate(delta:Single, randomFixed:Single):Color;
    overload function Evaluate(p:sandbox.Particle, seed:Int, line:Int):Color;
}
