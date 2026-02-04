package sandbox.balljoint;

@:native("Sandbox.BallJoint.MotorMode")
extern enum abstract MotorMode(Int) {
    var Disabled;
    var TargetRotation;
    var TargetVelocity;
}
