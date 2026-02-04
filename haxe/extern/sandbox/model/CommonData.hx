package sandbox.model;

@:native("Sandbox.Model.CommonData")
extern class CommonData {
    /** If the prop is destructable this is its start health */
    var Health(default,never):Single;
    /** Should this prop explode when destroyed? If so, this is the radius of the damage from it. */
    var Flammable(default,never):Bool;
    /** Should this prop explode when destroyed? If so, this is the radius of the damage from it. */
    var Explosive(default,never):Bool;
    /** Should this prop explode when destroyed? If so, this is the radius of the damage from it. */
    var ExplosionRadius(default,never):Single;
    /** Should this prop explode when destroyed? If so, this is the radius of the damage from it. */
    var ExplosionDamage(default,never):Single;
    /** Should this prop explode when destroyed? If so, this is the physics push force from it. */
    var ExplosionForce(default,never):Single;
    /** Minimum impact damage speed to break this object. */
    var MinImpactDamageSpeed(default,default):Single;
    /** The amount of damage this deals to other objects when it collides at high speed. If set to -1, this will be calculated from the mass of the rigidbody. */
    var ImpactDamage(default,default):Single;
}
