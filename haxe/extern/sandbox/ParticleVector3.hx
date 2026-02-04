package sandbox;

@:native("Sandbox.ParticleVector3")
final extern class ParticleVector3 {
    var X(default,set):sandbox.ParticleFloat;

    private inline function set_X(value:sandbox.ParticleFloat):sandbox.ParticleFloat {
        var __value:sandbox.ParticleFloat = cast value;
        return untyped __cs__("{0}.X = {1}", this, __value);
    }

    var Y(default,set):sandbox.ParticleFloat;

    private inline function set_Y(value:sandbox.ParticleFloat):sandbox.ParticleFloat {
        var __value:sandbox.ParticleFloat = cast value;
        return untyped __cs__("{0}.Y = {1}", this, __value);
    }

    var Z(default,set):sandbox.ParticleFloat;

    private inline function set_Z(value:sandbox.ParticleFloat):sandbox.ParticleFloat {
        var __value:sandbox.ParticleFloat = cast value;
        return untyped __cs__("{0}.Z = {1}", this, __value);
    }

    overload function Evaluate(p:sandbox.Particle, seed:Int, line:Int):Vector3;
    overload function Evaluate(delta:Single, a:Single, b:Single, c:Single):Vector3;
    function IsNearlyZero():Bool;
}
