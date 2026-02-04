package sandbox.hitboxset;

/** A single hitbox on the model. This can be a box, sphere or capsule. */
@:native("Sandbox.HitboxSet.Box")
extern class Box {
    var Name(default,default):String;
    var SurfaceName(default,default):String;
    var Bone(default,default):sandbox.bonecollection.Bone;
    var Tags(default,default):sandbox.ITagSet;
    /** Either a Sphere, Capsule or BBox */
    var Shape(default,default):cs.system.Object;
    /** Get a random point inside this hitbox */
    var RandomPointInside(default,never):Vector3;
    /** Get a random point on the edge this hitbox */
    var RandomPointOnEdge(default,never):Vector3;
}
