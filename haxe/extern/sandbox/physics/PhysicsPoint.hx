package sandbox.physics;

/** Used to describe a point on a physics body. This is used for things like joints where you want to pass in just a body, or sometimes you want to pass in a body with a specific location and rotation to attach to. */
@:native("Sandbox.Physics.PhysicsPoint")
final extern class PhysicsPoint {
    function new(body:sandbox.PhysicsBody, localPosition:Null<Vector3>, localRotation:Null<Rotation>):Void;
    /** A transform relative to , containing and with scale of 1. */
    var LocalTransform(default,set):Transform;

    private inline function set_LocalTransform(value:Transform):Transform {
        var __value:Transform = cast value;
        return untyped __cs__("{0}.LocalTransform = {1}", this, __value);
    }

    /** Transform of this point in world space. */
    var Transform(default,never):Transform;
    var Body(default,set):sandbox.PhysicsBody;

    private inline function set_Body(value:sandbox.PhysicsBody):sandbox.PhysicsBody {
        var __value:sandbox.PhysicsBody = cast value;
        return untyped __cs__("{0}.Body = {1}", this, __value);
    }

    var LocalPosition(default,set):Vector3;

    private inline function set_LocalPosition(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.LocalPosition = {1}", this, __value);
    }

    var LocalRotation(default,set):Rotation;

    private inline function set_LocalRotation(value:Rotation):Rotation {
        var __value:Rotation = cast value;
        return untyped __cs__("{0}.LocalRotation = {1}", this, __value);
    }

    /** Describe an attachment using a position/rotation local to the body */
    static function Local(body:sandbox.PhysicsBody, localPosition:Null<Vector3>, localRotation:Null<Rotation>):sandbox.physics.PhysicsPoint;
    /** Describe an attachment using a position/rotation from the world */
    static function World(body:sandbox.PhysicsBody, worldPosition:Null<Vector3>, worldRotation:Null<Rotation>):sandbox.physics.PhysicsPoint;
}
