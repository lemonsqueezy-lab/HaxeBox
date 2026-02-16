package sandbox;

/** Restrict an object to one axis, relative to another object. Like a drawer opening. */
@:native("Sandbox.SliderJoint")
final extern class SliderJoint extends sandbox.Joint {
    function new():Void;
    /** Maximum length it should be allowed to go */
    var MaxLength(default,default):Single;
    /** Minimum length it should be allowed to go */
    var MinLength(default,default):Single;
    /** Slider friction */
    var Friction(default,default):Single;
    @:protected function CreateJoint(point1:sandbox.physics.PhysicsPoint, point2:sandbox.physics.PhysicsPoint):sandbox.physics.PhysicsJoint;
}
