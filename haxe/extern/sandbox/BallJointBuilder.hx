package sandbox;

/** Provides ability to generate a ball joint for a at runtime. */
@:native("Sandbox.BallJointBuilder")
final extern class BallJointBuilder {
    /** Whether the joint enforces a swing angle limit. */
    var EnableSwingLimit(default,default):Bool;
    /** Whether the joint enforces a twist angle limit. */
    var EnableTwistLimit(default,default):Bool;
    /** Maximum allowed swing angle in degrees. */
    var SwingLimit(default,default):Single;
    /** Minimum and maximum allowed twist angles in degrees. */
    var TwistLimit(default,default):Vector2;
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
    function WithSwingLimit(v:Single):sandbox.BallJointBuilder;
    function WithTwistLimit(min:Single, max:Single):sandbox.BallJointBuilder;
}
