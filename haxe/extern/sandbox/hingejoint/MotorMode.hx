package sandbox.hingejoint;

@:native("Sandbox.HingeJoint.MotorMode")
extern enum abstract MotorMode(Int) {
    var Disabled;
    var TargetAngle;
    var TargetVelocity;
}
