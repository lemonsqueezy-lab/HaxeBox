package sandbox;

/** Try to keep an object a set distance away from another object. Like a spring connecting two objects. */
@:native("Sandbox.SpringJoint")
final extern class SpringJoint extends sandbox.Joint {
    function new():Void;
    /** The stiffness of the spring */
    var Frequency(default,default):Single;
    /** The damping ratio of the spring, usually between 0 and 1 */
    var Damping(default,default):Single;
    /** Minimum length it should be allowed to go */
    var MinLength(default,default):Single;
    /** Maximum length it should be allowed to go */
    var MaxLength(default,default):Single;
    /** Length of the spring at rest. */
    var RestLength(default,default):Single;
    /** Determines which way the spring applies force. Pull = only when stretched, Push = only when compressed, Both = acts in both directions. */
    var ForceMode(default,default):sandbox.springjoint.SpringForceMode;
    @:protected function CreateJoint(point1:sandbox.physics.PhysicsPoint, point2:sandbox.physics.PhysicsPoint):sandbox.physics.PhysicsJoint;
}
