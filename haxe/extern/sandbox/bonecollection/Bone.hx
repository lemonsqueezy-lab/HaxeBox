package sandbox.bonecollection;

/** A bone in a . */
@:native("Sandbox.BoneCollection.Bone")
extern class Bone {
    /** Numerical index of this bone. */
    var Index(default,never):Int;
    /** Name of this bone. */
    var Name(default,never):String;
    /** The parent bone. */
    var Parent(default,never):sandbox.bonecollection.Bone;
    /** Transform on this bone, relative to the root bone. */
    var LocalTransform(default,never):Transform;
    /** Whether this bone has any child bones. */
    var HasChildren(default,never):Bool;
    /** List of all bones that descend from this bone. */
    var Children(default,never):system.collections.generic.IReadOnlyList<sandbox.bonecollection.Bone>;
    /** Whether this bone has given name or not. */
    function IsNamed(name:String):Bool;
}
