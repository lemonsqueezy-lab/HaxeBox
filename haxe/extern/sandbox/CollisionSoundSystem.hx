package sandbox;

/** This system exists to collect pending collision sounds and filter them into a unique set, to avoid unnesssary sounds playing, when they're going to be making the same sound anyway. */
@:native("Sandbox.CollisionSoundSystem")
final extern class CollisionSoundSystem {
    function new(scene:sandbox.Scene):Void;
    var Scene(default,never):sandbox.Scene;
    var Id(default,never):system.Guid;
    overload function AddShapeCollision(shape:sandbox.PhysicsShape, surface:sandbox.Surface, contact:sandbox.PhysicsContact, networked:Bool):Void;
    overload function AddShapeCollision(shape:sandbox.PhysicsShape, surface:sandbox.Surface, position:Vector3, speed:Single, networked:Bool):Void;
    function RegisterCollision(collision:sandbox.Collision):Void;
}
