package sandbox;

/** Allows collision constrained movement without the need for a rigidbody. This is not affected by forces and will only move when you call the Move() method. */
@:native("Sandbox.CharacterController")
extern class CharacterController {
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
    /** The scene this Component is in. This is a shortcut for `GameObject.Scene`. */
    var Scene(default,never):sandbox.Scene;
    /** The transform of the GameObject this component belongs to. Components don't have their own transforms but they can access the transform of the GameObject they belong to. This is a shortcut for `GameObject.Transform`. */
    var Transform(default,never):sandbox.GameTransform;
    /** The GameObject this component belongs to. */
    var GameObject(default,never):sandbox.GameObject;
    /** Allow creating tasks that are automatically cancelled when the GameObject is destroyed. */
    @:protected
    var Task(null,never):sandbox.TaskSource;
    /** Access components on this component's GameObject */
    var Components(default,never):sandbox.ComponentList;
    /** The enable state of this . This doesn't tell you whether the component is actually active because its parent might be disabled. This merely tells you what the component wants to be. You should use to determine whether the object is truly active in the scene. */
    var Enabled(default,default):Bool;
    /** True if this Component is enabled, and all of its ancestor GameObjects are enabled */
    var Active(default,never):Bool;
    var IsValid(default,never):Bool;
    var OnComponentEnabled(default,default):system.Action;
    var OnComponentStart(default,default):system.Action;
    var OnComponentUpdate(default,default):system.Action;
    var OnComponentFixedUpdate(default,default):system.Action;
    var OnComponentDisabled(default,default):system.Action;
    var OnComponentDestroy(default,default):system.Action;
    var Tags(default,never):sandbox.ITagSet;
    /** Allows drawing of temporary debug shapes and text in the scene */
    var DebugOverlay(default,never):sandbox.DebugOverlaySystem;
    var Flags(default,default):sandbox.ComponentFlags;
    var Id(default,never):system.Guid;
    /** The local transform of the game object. */
    var LocalTransform(default,default):Transform;
    /** The local position of the game object. */
    var LocalPosition(default,default):Vector3;
    /** The local rotation of the game object. */
    var LocalRotation(default,default):Rotation;
    /** The local scale of the game object. */
    var LocalScale(default,default):Vector3;
    var Network(default,never):sandbox.gameobject.NetworkAccessor;
    /** True if this is a networked object and is owned by another client. This means that we're not controlling this object, so shouldn't try to move it or anything. */
    var IsProxy(default,never):Bool;
    /** The version of the component. Used by . */
    var ComponentVersion(default,never):Int;
    /** The world transform of the game object. */
    var WorldTransform(default,default):Transform;
    /** The world position of the game object. */
    var WorldPosition(default,default):Vector3;
    /** The world rotation of the game object. */
    var WorldRotation(default,default):Rotation;
    /** The world scale of the game object. */
    var WorldScale(default,default):Vector3;
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
