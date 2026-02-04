package sandbox;

/** Provides ability to generate a hinge joint for a at runtime. */
@:native("Sandbox.HingeJointBuilder")
final extern class HingeJointBuilder {
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
    /** The index of the first body connected by the joint. */
    var Body1(default,default):Int;
    /** The index of the second body connected by the joint. */
    var Body2(default,default):Int;
    /** The joint frame in the local space of . */
    var Frame1(default,default):Transform;
    /** The joint frame in the local space of . */
    var Frame2(default,default):Transform;
    /** Whether the connected bodies can collide with each other. */
    var EnableCollision(default,default):Bool;
    /** The maximum linear force the joint can withstand before breaking. */
    var LinearStrength(default,default):Single;
    /** The maximum angular force/torque the joint can withstand before breaking. */
    var AngularStrength(default,default):Single;
    function WithMaxTorque(v:Single):sandbox.HingeJointBuilder;
    function WithTargetVelocity(v:Vector3):sandbox.HingeJointBuilder;
    function WithTwistLimit(min:Single, max:Single):sandbox.HingeJointBuilder;
}
