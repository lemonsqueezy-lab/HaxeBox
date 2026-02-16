package sandbox;

/** Defines a collider based on a model. */
@:native("Sandbox.ModelCollider")
extern class ModelCollider extends sandbox.Collider {
    function new():Void;
    var Model(default,default):sandbox.Model;
    @:protected function CreatePhysicsShapes(targetBody:sandbox.PhysicsBody, local:Transform):system.collections.generic.IEnumerable<sandbox.PhysicsShape>;
    @:protected function DrawGizmos():Void;
    @:protected function OnAwake():Void;
}
