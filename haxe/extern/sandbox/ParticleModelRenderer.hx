package sandbox;

/** Renders particles as models, using the particle's position, rotation, and size. */
@:native("Sandbox.ParticleModelRenderer")
final extern class ParticleModelRenderer extends sandbox.ParticleController {
    function new():Void;
    /** Render options for advanced rendering. */
    var RenderOptions(default,never):sandbox.RenderOptions;
    /** List of models for rendering. This property is obsolete; use instead. */
    var Models(default,default):system.collections.generic.List<sandbox.Model>;
    /** List of model entries available for rendering. */
    var Choices(default,default):system.collections.generic.List<sandbox.particlemodelrenderer.ModelEntry>;
    /** Material override for rendering. */
    var MaterialOverride(default,default):sandbox.Material;
    /** If true, the models will rotate relative to the this GameObject */
    var RotateWithGameObject(default,default):Bool;
    /** Scale factor for particle rendering. */
    var Scale(default,default):sandbox.ParticleFloat;
    /** Indicates whether particles cast shadows. */
    var CastShadows(default,default):Bool;
    /** Called when a particle is created. */
    @:protected function OnParticleCreated(p:sandbox.Particle):Void;
}
