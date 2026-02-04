package sandbox.physicsgroupdescription;

@:native("Sandbox.PhysicsGroupDescription.BodyPart")
final extern class BodyPart {
    var Transform(default,default):Transform;
    var BoneName(default,default):String;
    var Mass(default,never):Single;
    var LinearDamping(default,never):Single;
    var AngularDamping(default,never):Single;
    var OverrideMassCenter(default,never):Bool;
    var MassCenterOverride(default,never):Vector3;
    var GravityScale(default,never):Single;
    var Spheres(default,never):system.collections.generic.IReadOnlyList<sandbox.physicsgroupdescription.bodypart.SpherePart>;
    var Capsules(default,never):system.collections.generic.IReadOnlyList<sandbox.physicsgroupdescription.bodypart.CapsulePart>;
    var Hulls(default,never):system.collections.generic.IReadOnlyList<sandbox.physicsgroupdescription.bodypart.HullPart>;
    var Meshes(default,never):system.collections.generic.IReadOnlyList<sandbox.physicsgroupdescription.bodypart.MeshPart>;
    var Parts(default,never):system.collections.generic.IReadOnlyList<sandbox.physicsgroupdescription.bodypart.Part>;
}
