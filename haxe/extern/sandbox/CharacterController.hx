package sandbox;

/** Allows collision constrained movement without the need for a rigidbody. This is not affected by forces and will only move when you call the Move() method. */
@:native("Sandbox.CharacterController")
extern class CharacterController extends sandbox.Component {
    function new():Void;
    var Radius(default,default):Single;
    var Height(default,default):Single;
    var StepHeight(default,default):Single;
    var GroundAngle(default,default):Single;
    var Acceleration(default,default):Single;
    /** When jumping into walls, should we bounce off or just stop dead? */
    var Bounciness(default,default):Single;
    /** If enabled, determine what to collide with using current project's collision rules for the of the containing . */
    var UseCollisionRules(default,default):Bool;
    var IgnoreLayers(default,default):sandbox.TagSet;
    var BoundingBox(default,never):BBox;
    var Velocity(default,default):Vector3;
    var IsOnGround(default,default):Bool;
    var GroundObject(default,default):sandbox.GameObject;
    var GroundCollider(default,default):sandbox.Collider;
    /** Add acceleration to the current velocity. No need to scale by time delta - it will be done inside. */
    function Accelerate(vector:Vector3):Void;
    /** Apply an amount of friction to the current velocity. No need to scale by time delta - it will be done inside. */
    function ApplyFriction(frictionAmount:Single, stopSpeed:Single):Void;
    @:protected function DrawGizmos():Void;
    /** Move a character, with this velocity */
    function Move():Void;
    /** Move from our current position to this target position, but using tracing an sliding. This is good for different control modes like ladders and stuff. */
    function MoveTo(targetPosition:Vector3, useStep:Bool):Void;
    function Punch(amount:Vector3):Void;
    /** Trace the controller's current position to the specified delta */
    function TraceDirection(direction:Vector3):sandbox.SceneTraceResult;
}
