package sandbox;

/** Adds lighting to particles in your effect. */
@:native("Sandbox.ParticleLightRenderer")
final extern class ParticleLightRenderer extends sandbox.ParticleController {
    function new():Void;
    /** If 1, then every particle will get a light. If 0, no particles will get a light. If 0.5, half will get a particle. */
    var Ratio(default,default):Single;
    var MaximumLights(default,default):Int;
    var CastShadows(default,default):Bool;
    var Scale(default,default):sandbox.ParticleFloat;
    var Attenuation(default,default):sandbox.ParticleFloat;
    var Brightness(default,default):sandbox.ParticleFloat;
    var LightColor(default,default):sandbox.ParticleGradient;
    var UseParticleColor(default,default):Bool;
    @:protected function OnParticleCreated(p:sandbox.Particle):Void;
}
