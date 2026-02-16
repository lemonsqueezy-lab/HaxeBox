package sandbox;

/** Defines a capsule collider. */
@:native("Sandbox.CapsuleCollider")
extern class CapsuleCollider extends sandbox.Collider {
    function new():Void;
    /** Bottom point of the capsule */
    var Start(default,default):Vector3;
    /** Top point of the capsule */
    var End(default,default):Vector3;
    /** Radius of the capsule */
    var Radius(default,default):Single;
    @:protected function CreatePhysicsShapes(targetBody:sandbox.PhysicsBody, local:Transform):system.collections.generic.IEnumerable<sandbox.PhysicsShape>;
    @:protected function DrawGizmos():Void;
}
