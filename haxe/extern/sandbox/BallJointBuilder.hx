package sandbox;

/** Provides ability to generate a ball joint for a at runtime. */
@:native("Sandbox.BallJointBuilder")
final extern class BallJointBuilder extends sandbox.PhysicsJointBuilder {
    /** Whether the joint enforces a swing angle limit. */
    var EnableSwingLimit(default,default):Bool;
    /** Whether the joint enforces a twist angle limit. */
    var EnableTwistLimit(default,default):Bool;
    /** Maximum allowed swing angle in degrees. */
    var SwingLimit(default,default):Single;
    /** Minimum and maximum allowed twist angles in degrees. */
    var TwistLimit(default,default):Vector2;
    function WithSwingLimit(v:Single):sandbox.BallJointBuilder;
    function WithTwistLimit(min:Single, max:Single):sandbox.BallJointBuilder;
}
