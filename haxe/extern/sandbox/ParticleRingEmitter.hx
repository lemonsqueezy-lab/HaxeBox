package sandbox;

/** Emits particles in a ring. The ring can be flat or have a tube-like quality. Velocity can either be added from the center of the ring, or from the ring itself. */
@:native("Sandbox.ParticleRingEmitter")
final extern class ParticleRingEmitter extends sandbox.ParticleEmitter {
    function new():Void;
    var Radius(default,default):sandbox.ParticleFloat;
    var Thickness(default,default):sandbox.ParticleFloat;
    var AngleStart(default,default):sandbox.ParticleFloat;
    var Angle(default,default):sandbox.ParticleFloat;
    var Flatness(default,default):sandbox.ParticleFloat;
    var VelocityFromCenter(default,default):sandbox.ParticleFloat;
    var VelocityFromRing(default,default):sandbox.ParticleFloat;
    @:protected function DrawGizmos():Void;
    function Emit(target:sandbox.ParticleEffect):Bool;
}
