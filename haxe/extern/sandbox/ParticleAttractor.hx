package sandbox;

/** Attract particles to a GameObject in the scene */
@:native("Sandbox.ParticleAttractor")
extern class ParticleAttractor extends sandbox.ParticleController {
    function new():Void;
    var Target(default,default):sandbox.GameObject;
    var Force(default,default):sandbox.ParticleFloat;
    var MaxForce(default,default):sandbox.ParticleFloat;
    var Randomness(default,default):sandbox.ParticleFloat;
    var Radius(default,default):Single;
    @:protected function DrawGizmos():Void;
    @:protected function OnBeforeStep(delta:Single):Void;
    @:protected function OnParticleStep(particle:sandbox.Particle, delta:Single):Void;
}
