package sandbox;

/** Renders a set of particles. Should be attached to a . */
@:native("Sandbox.ParticleRenderer")
extern class ParticleRenderer extends sandbox.Renderer {
    @:protected function new():Void;
    var ParticleEffect(default,default):sandbox.ParticleEffect;
    /** Return the bounds of this renderer in local space. */
    @:protected function GetLocalBounds():BBox;
    @:protected function OnDisabled():Void;
    @:protected function OnEnabled():Void;
    @:protected function OnParticleCreated(p:sandbox.Particle):Void;
}
