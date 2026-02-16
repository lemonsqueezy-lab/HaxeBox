package sandbox;

@:native("Sandbox.MapCollider")
extern class MapCollider extends sandbox.Collider {
    function new():Void;
    @:protected function CreatePhysicsShapes(targetBody:sandbox.PhysicsBody, local:Transform):system.collections.generic.IEnumerable<sandbox.PhysicsShape>;
}
