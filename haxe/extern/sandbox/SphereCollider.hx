package sandbox;

/** Defines a sphere collider. */
@:native("Sandbox.SphereCollider")
final extern class SphereCollider extends sandbox.Collider {
    function new():Void;
    var Center(default,default):Vector3;
    var Radius(default,default):Single;
    @:protected function CreatePhysicsShapes(targetBody:sandbox.PhysicsBody, local:Transform):system.collections.generic.IEnumerable<sandbox.PhysicsShape>;
    @:protected function DrawGizmos():Void;
}
