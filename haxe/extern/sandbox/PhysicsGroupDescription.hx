package sandbox;

@:native("Sandbox.PhysicsGroupDescription")
final extern class PhysicsGroupDescription {
    var Parts(default,never):system.collections.generic.IReadOnlyList<sandbox.physicsgroupdescription.BodyPart>;
    var Joints(default,never):system.collections.generic.IReadOnlyList<sandbox.physicsgroupdescription.Joint>;
    /** Enumerate every in this */
    var Surfaces(default,never):system.collections.generic.IEnumerable<sandbox.Surface>;
    var BoneCount(default,never):Int;
    @:protected function Finalize():Void;
}
