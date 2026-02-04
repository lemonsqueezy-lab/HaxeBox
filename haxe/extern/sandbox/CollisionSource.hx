package sandbox;

@:native("Sandbox.CollisionSource")
final extern class CollisionSource {
    var IsTrigger(default,never):Bool;
    var Body(default,never):sandbox.PhysicsBody;
    var Shape(default,never):sandbox.PhysicsShape;
    var Surface(default,never):sandbox.Surface;
    var Collider(default,never):sandbox.Collider;
    var GameObject(default,never):sandbox.GameObject;
}
