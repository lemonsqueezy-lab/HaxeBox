package sandbox;

/** Create a hinged connection between two physics objects. Like a door hinge or a wheel. */
@:native("Sandbox.HingeJoint")
final extern class HingeJoint extends sandbox.Joint {
    function new():Void;
    /** Minimum angle it should be allowed to go */
    var MinAngle(default,default):Single;
    /** Maximum angle it should be allowed to go */
    var MaxAngle(default,default):Single;
    /** Motor mode */
    var Motor(default,default):sandbox.hingejoint.MotorMode;
    /** Hinge friction */
    var Friction(default,default):Single;
    /** Target angle of motor */
    var TargetAngle(default,default):Single;
    var Fequency(default,default):Single;
    /** Frequency of motor */
    var Frequency(default,default):Single;
    /** Damping of motor */
    var DampingRatio(default,default):Single;
    /** Target velocity of motor */
    var TargetVelocity(default,default):Single;
    /** Max torque of motor */
    var MaxTorque(default,default):Single;
    var Angle(default,never):Single;
    var Speed(default,never):Single;
    var Axis(default,never):Vector3;
    @:protected function CreateJoint(point1:sandbox.physics.PhysicsPoint, point2:sandbox.physics.PhysicsPoint):sandbox.physics.PhysicsJoint;
    @:protected function OnDirty():Void;
}
