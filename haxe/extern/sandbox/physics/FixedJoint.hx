package sandbox.physics;

/** A generic "rope" type constraint. */
@:native("Sandbox.Physics.FixedJoint")
extern class FixedJoint extends sandbox.physics.PhysicsJoint {
    /** How springy and tight the joint will be in its movement. */
    var SpringLinear(default,default):sandbox.physics.PhysicsSpring;
    /** How springy and tight the joint will be in its rotation. */
    var SpringAngular(default,default):sandbox.physics.PhysicsSpring;
}
