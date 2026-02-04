package sandbox;

/** A collection of bones. This could be from a model, or an entity */
@:native("Sandbox.BoneCollection")
extern class BoneCollection {
    /** Root bone of the model. */
    var Root(default,never):sandbox.bonecollection.Bone;
    /** List of all bones of our object. */
    var AllBones(default,never):system.collections.generic.IReadOnlyList<sandbox.bonecollection.Bone>;
    /** Retrieve a bone by name. */
    function GetBone(name:String):sandbox.bonecollection.Bone;
    /** Whether the model or entity has a given bone by name. */
    function HasBone(name:String):Bool;
}
