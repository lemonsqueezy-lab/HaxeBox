package sandbox;

@:native("Sandbox.ControlJoint")
final extern class ControlJoint extends sandbox.Joint {
    function new():Void;
    var LinearVelocity(default,default):Vector3;
    var AngularVelocity(default,default):Vector3;
    var MaxVelocityForce(default,default):Single;
    var MaxVelocityTorque(default,default):Single;
    var LinearSpring(default,default):sandbox.physics.PhysicsSpring;
    var AngularSpring(default,default):sandbox.physics.PhysicsSpring;
    @:protected function CreateJoint(point1:sandbox.physics.PhysicsPoint, point2:sandbox.physics.PhysicsPoint):sandbox.physics.PhysicsJoint;
}
