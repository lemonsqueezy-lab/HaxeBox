package sandbox.modeleditor.nodes;

/** Generic prop settings. Support for this depends on the entity. */
@:native("Sandbox.ModelEditor.Nodes.ModelPropData")
extern class ModelPropData {
    function new():Void;
    /** When this model is used as prop_static, it will bake lighting by default depending on this value. */
    var BakeLighting(default,default):Bool;
    /** When this model is used as prop_physics, it's health will be set to this value. */
    var Health(default,default):Single;
    /** If true well treat this prop as flammable, meaning it can catch fire and burn. */
    var Flammable(default,default):Bool;
    /** If true we'll explode this prop when it's destroyed */
    var Explosive(default,default):Bool;
    /** Amount of damage to do at the center on the explosion. It will falloff over distance. */
    var ExplosionDamage(default,default):Single;
    /** Range of explosion's damage. */
    var ExplosionRadius(default,default):Single;
    /** Scale of the force applied to entities damaged by the explosion and the models break pieces. */
    var ExplosionForce(default,default):Single;
    /** Minimum impact damage speed to break this object. */
    var MinImpactDamageSpeed(default,default):Single;
    /** The amount of damage this deals to other objects when it collides at high speed. If set to -1, this will be calculated from the mass of the rigidbody. */
    var ImpactDamage(default,default):Single;
}
