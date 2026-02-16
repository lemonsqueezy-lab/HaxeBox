package sandbox;

/** Renders a trail for each particle in the effect. */
@:native("Sandbox.ParticleTrailRenderer")
final extern class ParticleTrailRenderer extends sandbox.ParticleController {
    function new():Void;
    var RenderOptions(default,never):sandbox.RenderOptions;
    var MaxPoints(default,default):Int;
    var PointDistance(default,default):Single;
    var LifeTime(default,default):Single;
    var Texturing(default,default):sandbox.TrailTextureConfig;
    var Color(default,default):sandbox.Gradient;
    var Width(default,default):sandbox.Curve;
    var TintFromParticle(default,default):Bool;
    var ScaleFromParticle(default,default):Bool;
    var Wireframe(default,default):Bool;
    var Opaque(default,default):Bool;
    var CastShadows(default,default):Bool;
    var BlendMode(default,default):sandbox.BlendMode;
    @:protected function OnDisabled():Void;
    @:protected function OnEnabled():Void;
    @:protected function OnParticleCreated(p:sandbox.Particle):Void;
    @:protected function OnUpdate():Void;
}
