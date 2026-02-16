package sandbox;

/** Fix two objects together but can rotate - like a shoulder. */
@:native("Sandbox.BallJoint")
final extern class BallJoint extends sandbox.Joint {
    function new():Void;
    /** Motor mode */
    var Motor(default,default):sandbox.balljoint.MotorMode;
    /** Enables or disables the swing limit. */
    var SwingLimitEnabled(default,default):Bool;
    /** The minimum and maximum swing angles allowed by the joint in degrees. */
    var SwingLimit(default,default):Vector2;
    /** Enables or disables the twist limit. */
    var TwistLimitEnabled(default,default):Bool;
    /** The minimum and maximum twist angles allowed by the joint in degrees. */
    var TwistLimit(default,default):Vector2;
    /** Joint friction. */
    var Friction(default,default):Single;
    /** Target angle of motor. */
    var TargetRotation(default,default):Rotation;
    /** Frequency of motor. */
    var Frequency(default,default):Single;
    /** Damping of motor. */
    var DampingRatio(default,default):Single;
    /** Target angular velocity of the motor. */
    var TargetVelocity(default,default):Vector3;
    /** Maximum torque the motor can apply when in velocity mode. */
    var MaxTorque(default,default):Single;
    @:protected function CreateJoint(point1:sandbox.physics.PhysicsPoint, point2:sandbox.physics.PhysicsPoint):sandbox.physics.PhysicsJoint;
    @:protected function OnDirty():Void;
}
