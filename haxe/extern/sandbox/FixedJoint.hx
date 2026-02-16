package sandbox;

/** Weld two physics objects together */
@:native("Sandbox.FixedJoint")
final extern class FixedJoint extends sandbox.Joint {
    function new():Void;
    var LinearFrequency(default,default):Single;
    var LinearDamping(default,default):Single;
    var AngularFrequency(default,default):Single;
    var AngularDamping(default,default):Single;
    @:protected function CreateJoint(point1:sandbox.physics.PhysicsPoint, point2:sandbox.physics.PhysicsPoint):sandbox.physics.PhysicsJoint;
}
