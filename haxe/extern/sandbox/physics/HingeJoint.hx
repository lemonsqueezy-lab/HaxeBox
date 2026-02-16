package sandbox.physics;

/** A hinge-like constraint. */
@:native("Sandbox.Physics.HingeJoint")
extern class HingeJoint extends sandbox.physics.PhysicsJoint {
    /** Maximum angle it should be allowed to go */
    var MaxAngle(default,default):Single;
    /** Minimum angle it should be allowed to go */
    var MinAngle(default,default):Single;
    var Angle(default,never):Single;
    var Axis(default,never):Vector3;
    var Speed(default,never):Single;
    /** Hinge friction. */
    var Friction(never,default):Single;
}
