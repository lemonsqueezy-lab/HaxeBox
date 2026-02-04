package sandbox.physicscontact;

@:native("Sandbox.PhysicsContact.Target")
final extern class Target {
    var Body(default,never):sandbox.PhysicsBody;
    var Shape(default,never):sandbox.PhysicsShape;
    var Surface(default,never):sandbox.Surface;
}
