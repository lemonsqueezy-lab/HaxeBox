package sandbox;

@:native("Sandbox.ModelParts")
extern class ModelParts {
    function new(model:sandbox.Model):Void;
    /** All body parts in this model. */
    var All(default,never):system.collections.generic.IReadOnlyList<sandbox.model.BodyPart>;
    /** How many body parts there are in this model. */
    var Count(default,never):Int;
    /** Default body groups mask for this model. */
    var DefaultMask(default,never):system.UInt64;
    /** Get body part by name. */
    function Get(name:String):sandbox.model.BodyPart;
}
