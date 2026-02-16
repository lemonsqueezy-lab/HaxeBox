package sandbox.physics;

/** A rope-like constraint that is has springy/bouncy. */
@:native("Sandbox.Physics.SpringJoint")
extern class SpringJoint extends sandbox.physics.PhysicsJoint {
    /** How springy and tight the joint will be */
    var SpringLinear(default,default):sandbox.physics.PhysicsSpring;
    /** Maximum length it should be allowed to go */
    var MaxLength(default,default):Single;
    /** Minimum length it should be allowed to go. At which point it acts a bit like a rod. */
    var MinLength(default,default):Single;
    /** Maximum force it should be allowed to go. Set to zero to only allow stretching. */
    var MaxForce(default,default):Single;
    /** Minimum force it should be allowed to go. */
    var MinForce(default,default):Single;
    var ReferenceMass(default,default):Single;
}
