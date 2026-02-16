package sandbox;

/** Emits particles within a sphere shape. */
@:native("Sandbox.ParticleSphereEmitter")
final extern class ParticleSphereEmitter extends sandbox.ParticleEmitter {
    function new():Void;
    var Radius(default,default):Single;
    var Velocity(default,default):Single;
    var OnEdge(default,default):Bool;
    @:protected function DrawGizmos():Void;
    function Emit(target:sandbox.ParticleEffect):Bool;
}
