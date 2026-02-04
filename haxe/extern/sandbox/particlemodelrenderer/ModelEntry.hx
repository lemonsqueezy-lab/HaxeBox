package sandbox.particlemodelrenderer;

/** Entry for a model, including its material group and body group settings. */
@:native("Sandbox.ParticleModelRenderer.ModelEntry")
final extern class ModelEntry {
    function new():Void;
    /** The model associated with this entry. */
    var Model(default,default):sandbox.Model;
    /** Material group for the model. */
    var MaterialGroup(default,default):String;
    /** Body group mask for the model. */
    var BodyGroups(default,default):system.UInt64;
    /** Indicates whether the model has material groups. */
    var HasMaterialGroups(default,never):Bool;
    /** Indicates whether the model has body groups. */
    var HasBodyGroups(default,never):Bool;
}
