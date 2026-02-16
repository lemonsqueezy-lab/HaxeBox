package sandbox;

/** Defines a plane collider. */
@:native("Sandbox.PlaneCollider")
final extern class PlaneCollider extends sandbox.Collider {
    function new():Void;
    /** The size of the plane, from corner to corner. */
    var Scale(default,default):Vector2;
    /** The center of the plane relative to this GameObject. */
    var Center(default,default):Vector3;
    /** The normal of the plane, determining its orientation. */
    var Normal(default,default):Vector3;
    @:protected function CreatePhysicsShapes(targetBody:sandbox.PhysicsBody, local:Transform):system.collections.generic.IEnumerable<sandbox.PhysicsShape>;
    @:protected function DrawGizmos():Void;
}
