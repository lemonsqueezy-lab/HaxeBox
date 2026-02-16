package sandbox;

/** Emits particles within/along a cone shape. */
@:native("Sandbox.ParticleConeEmitter")
final extern class ParticleConeEmitter extends sandbox.ParticleEmitter {
    function new():Void;
    var OnEdge(default,default):Bool;
    var InVolume(default,default):Bool;
    var ConeAngle(default,default):sandbox.ParticleFloat;
    var ConeNear(default,default):sandbox.ParticleFloat;
    var ConeFar(default,default):sandbox.ParticleFloat;
    /** Randomize the direction of the initial velocity. 0 = no randomization, 1 = full randomization. */
    var VelocityRandom(default,default):sandbox.ParticleFloat;
    /** When distributing should we bias the center of the cone */
    var CenterBias(default,default):sandbox.ParticleFloat;
    /** Should particles near the center have more velocity */
    var CenterBiasVelocity(default,default):sandbox.ParticleFloat;
    /** Multiply velocity by this */
    var VelocityMultiplier(default,default):sandbox.ParticleFloat;
    @:protected function DrawGizmos():Void;
    function Emit(target:sandbox.ParticleEffect):Bool;
}
