package sandbox;

/** Defines a box collider. */
@:native("Sandbox.BoxCollider")
final extern class BoxCollider extends sandbox.Collider {
    function new():Void;
    /** The size of the box, from corner to corner. */
    var Scale(default,default):Vector3;
    /** The center of the box relative to this GameObject */
    var Center(default,default):Vector3;
    @:protected function CreatePhysicsShapes(targetBody:sandbox.PhysicsBody, local:Transform):system.collections.generic.IEnumerable<sandbox.PhysicsShape>;
    @:protected function DrawGizmos():Void;
}
