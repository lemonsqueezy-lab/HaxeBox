package sandbox;

/** Provides ability to generate a hinge joint for a at runtime. */
@:native("Sandbox.HingeJointBuilder")
final extern class HingeJointBuilder extends sandbox.PhysicsJointBuilder {
    /** Whether the hinge enforces a twist angle limit. */
    var EnableTwistLimit(default,default):Bool;
    /** The minimum and maximum allowed twist angles (degrees). */
    var TwistLimit(default,default):Vector2;
    /** Whether the hinge's angular motor is enabled. */
    var EnableMotor(default,default):Bool;
    /** Target angular velocity for the motor. */
    var TargetVelocity(default,default):Vector3;
    /** Maximum torque the motor may apply. */
    var MaxTorque(default,default):Single;
    function WithMaxTorque(v:Single):sandbox.HingeJointBuilder;
    function WithTargetVelocity(v:Vector3):sandbox.HingeJointBuilder;
    function WithTwistLimit(min:Single, max:Single):sandbox.HingeJointBuilder;
}
