package sandbox.physicsgroupdescription;

@:native("Sandbox.PhysicsGroupDescription.Joint")
final extern class Joint {
    var Type(default,never):sandbox.physicsgroupdescription.JointType;
    var Fixed(default,never):Bool;
    var Body1(default,never):Int;
    var Body2(default,never):Int;
    var Frame1(default,never):Transform;
    var Frame2(default,never):Transform;
    var EnableCollision(default,never):Bool;
    var EnableLinearLimit(default,never):Bool;
    var EnableLinearMotor(default,never):Bool;
    var LinearTargetVelocity(default,never):Vector3;
    var MaxForce(default,never):Single;
    var LinearFrequency(default,never):Single;
    var LinearDampingRatio(default,never):Single;
    var LinearStrength(default,never):Single;
    var EnableSwingLimit(default,never):Bool;
    var EnableTwistLimit(default,never):Bool;
    var EnableAngularMotor(default,never):Bool;
    var AngularTargetVelocity(default,never):Vector3;
    var MaxTorque(default,never):Single;
    var AngularFrequency(default,never):Single;
    var AngularDampingRatio(default,never):Single;
    var AngularStrength(default,never):Single;
    var LinearMin(default,never):Single;
    var LinearMax(default,never):Single;
    var SwingMin(default,never):Single;
    var SwingMax(default,never):Single;
    var TwistMin(default,never):Single;
    var TwistMax(default,never):Single;
}
