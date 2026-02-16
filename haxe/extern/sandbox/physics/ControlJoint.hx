package sandbox.physics;

/** The control joint is designed to control the movement of a body while remaining responsive to collisions. A spring can be used to control position and rotation, while a velocity motor can control velocity and simulate friction in top-down games. Both methods can be combined — for example, a spring with friction. Position and velocity control each have configurable force and torque limits. */
@:native("Sandbox.Physics.ControlJoint")
extern class ControlJoint extends sandbox.physics.PhysicsJoint {
    /** The desired relative linear velocity. */
    var LinearVelocity(default,default):Vector3;
    /** The desired relative angular velocity in radians per second. */
    var AngularVelocity(default,default):Vector3;
    /** The joint maximum force. */
    var MaxVelocityForce(default,default):Single;
    /** The joint maximum torque. */
    var MaxVelocityTorque(default,default):Single;
    /** The spring linear hertz stiffness and damping ratio. */
    var LinearSpring(default,default):sandbox.physics.PhysicsSpring;
    /** The spring angular hertz stiffness and damping ratio. */
    var AngularSpring(default,default):sandbox.physics.PhysicsSpring;
}
