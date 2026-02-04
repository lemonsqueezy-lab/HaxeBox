package sandbox;

/** A set of hitboxes on a model. Hitboxes can be boxes, spheres or capsules. */
@:native("Sandbox.HitboxSet")
extern class HitboxSet {
    /** All hitboxes in this set */
    var All(default,never):system.collections.generic.IReadOnlyList<sandbox.hitboxset.Box>;
}
