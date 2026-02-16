package sandbox;

/** Particles can have extra controllers that can modify the particles every frame. */
@:native("Sandbox.ParticleController")
extern class ParticleController extends sandbox.Component {
    @:protected function new():Void;
    /** The particle we're controlling */
    var ParticleEffect(default,default):sandbox.ParticleEffect;
    /** Called after the particle step */
    @:protected function OnAfterStep(delta:Single):Void;
    /** Called before the particle step */
    @:protected function OnBeforeStep(delta:Single):Void;
    @:protected function OnDisabled():Void;
    @:protected function OnEnabled():Void;
    @:protected function OnParticleCreated(p:sandbox.Particle):Void;
    @:protected function OnParticleDestroyed(p:sandbox.Particle):Void;
    /** Called for each particle during the particle step. This is super threaded so you better watch out. */
    @:protected function OnParticleStep(particle:sandbox.Particle, delta:Single):Void;
}
