package sandbox;

/** The wheel joint can be used to simulate wheels on vehicles. The wheel joint restricts body B to move along a local axis in body A. Body B is free to rotate. Supports a linear spring, linear limits, and a rotational motor. The assumption is that you will create this joint on the wheel body.This will enable suspension to be in the correct direction. */
@:native("Sandbox.WheelJoint")
final extern class WheelJoint extends sandbox.Joint {
    function new():Void;
    var EnableSuspensionLimit(default,default):Bool;
    var SuspensionLimits(default,default):Vector2;
    var EnableSpinMotor(default,default):Bool;
    var MaxSpinTorque(default,default):Single;
    var SpinMotorSpeed(default,default):Single;
    var EnableSuspension(default,default):Bool;
    var SuspensionHertz(default,default):Single;
    var SuspensionDampingRatio(default,default):Single;
    var EnableSteering(default,default):Bool;
    var SteeringHertz(default,default):Single;
    var SteeringDampingRatio(default,default):Single;
    var TargetSteeringAngle(default,default):Single;
    var MaxSteeringTorque(default,default):Single;
    var EnableSteeringLimit(default,default):Bool;
    var SteeringLimits(default,default):Vector2;
    var SpinSpeed(default,never):Single;
    var SpinTorque(default,never):Single;
    var SteeringAngle(default,never):Single;
    var SteeringTorque(default,never):Single;
    @:protected function CreateJoint(point1:sandbox.physics.PhysicsPoint, point2:sandbox.physics.PhysicsPoint):sandbox.physics.PhysicsJoint;
    @:protected function DrawGizmos():Void;
}
