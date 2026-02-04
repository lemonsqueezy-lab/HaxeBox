package sandbox;

/** Defines a sphere collider. */
@:native("Sandbox.SphereCollider")
final extern class SphereCollider {
    function new():Void;
    var Center(default,default):Vector3;
    var Radius(default,default):Single;
    var Static(default,default):Bool;
    var IsConcave(default,never):Bool;
    /** Return true if this collider is using dynamic physics. Returns false if this is a keyframe body, or a static physics body. */
    var IsDynamic(default,never):Bool;
    /** Allows overriding the friction for this collider. This value can exceed 1 to to give crazy grippy friction if you want it to, but the normal value is between 0 and 1. */
    var Friction(default,default):Null<Single>;
    /** Allows overriding the elasticity for this collider. Controls how bouncy this collider is. */
    var Elasticity(default,default):Null<Single>;
    /** Allows overriding the rolling resistance for this collider. Controls how easily rolling shapes (sphere, capsule) roll on surfaces. */
    var RollingResistance(default,default):Null<Single>;
    var Surface(default,default):sandbox.Surface;
    /** Set the local velocity of the surface so things can slide along it, like a conveyor belt */
    var SurfaceVelocity(default,default):Vector3;
    var IsTrigger(default,default):Bool;
    /** Calculated local bounds of all physics shapes in this collider. */
    var LocalBounds(default,never):BBox;
    /** Called when a collider enters this trigger */
    var OnTriggerEnter(default,default):system.Action1<sandbox.Collider>;
    /** Called when a collider exits this trigger */
    var OnTriggerExit(default,default):system.Action1<sandbox.Collider>;
    /** Called when a gameobject enters this trigger */
    var OnObjectTriggerEnter(default,default):system.Action1<sandbox.GameObject>;
    /** Called when a gameobject exits this trigger */
    var OnObjectTriggerExit(default,default):system.Action1<sandbox.GameObject>;
    /** If we're a trigger, this will list all of the colliders that are touching us. If we're not a trigger, this will list all of the triggers that we are touching. */
    var Touching(default,never):system.collections.generic.IEnumerable<sandbox.Collider>;
    /** Flags that modify the behavior of this collider */
    var ColliderFlags(default,default):sandbox.ColliderFlags;
    var KeyframeBody(default,never):sandbox.PhysicsBody;
    /** If we're a keyframe collider, this is the set of joints attached to us. If we're not then this won't ever return anything. */
    var Joints(default,never):system.collections.generic.IReadOnlySet<sandbox.Joint>;
    /** If this collider is part of a Rigidbody then this will return the component that it's attached to. If this is null it's usually a good indication that this collider is either static, world geometry, or a keyframe. */
    var Rigidbody(default,never):sandbox.Rigidbody;
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
    @:protected
    var _keyframeBody(null,null):sandbox.PhysicsBody;
    @:protected function CreatePhysicsShapes(targetBody:sandbox.PhysicsBody, local:Transform):system.collections.generic.IEnumerable<sandbox.PhysicsShape>;
    @:protected function DrawGizmos():Void;
}
