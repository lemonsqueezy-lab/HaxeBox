package sandbox;

/** Adds physics properties to an object. Requires a collider to be attached to the same object. */
@:native("Sandbox.Rigidbody")
final extern class Rigidbody {
    function new():Void;
    /** Is gravity enabled or not. */
    var Gravity(default,default):Bool;
    /** Scale the gravity relative to . 2 is double the gravity, etc. */
    var GravityScale(default,default):Single;
    var LinearDamping(default,default):Single;
    var AngularDamping(default,default):Single;
    /** Override mass for this body, only when value is more than zero */
    var MassOverride(default,default):Single;
    var Mass(default,never):Single;
    var OverrideMassCenter(default,default):Bool;
    var MassCenterOverride(default,default):Vector3;
    /** Center of mass for this rigidbody in local space coordinates. */
    var MassCenter(default,never):Vector3;
    var Locking(default,default):sandbox.PhysicsLock;
    var StartAsleep(default,default):Bool;
    var RigidbodyFlags(default,default):sandbox.RigidbodyFlags;
    /** Whether this rigidbody can deal damage to damageable objects on high-speed impacts. */
    var EnableImpactDamage(default,default):Bool;
    /** The minimum speed required for an impact to cause damage. */
    var MinImpactDamageSpeed(default,default):Single;
    /** The amount of damage this rigidbody deals to other objects when it collides at high speed. If set to 0 or less, this will be calculated from the mass of the rigidbody. */
    var ImpactDamage(default,default):Single;
    var Velocity(default,default):Vector3;
    var AngularVelocity(default,default):Vector3;
    var MotionEnabled(default,default):Bool;
    /** Enable or disable touch events. If you disable the events then ICollisionListener won't get any touch events and you won't get things like collision sounds. */
    var CollisionEventsEnabled(default,default):Bool;
    /** Like CollisionEventsEnabled but means the OnCollisionUpdate gets called when the collision persists */
    var CollisionUpdateEventsEnabled(default,default):Bool;
    var Sleeping(default,default):Bool;
    /** Gets or sets the inertia tensor for this body. By default, the inertia tensor is automatically calculated from the shapes attached to the body. Setting this property overrides the automatically calculated inertia tensor until is called. */
    var InertiaTensor(default,default):Vector3;
    /** Gets or sets the rotation applied to the inertia tensor. Like , this acts as an override to the automatically calculated inertia tensor rotation and remains in effect until is called. */
    var InertiaTensorRotation(default,default):Rotation;
    /** Enable enhanced continuous collision detection (CCD) for this body. When enabled, the body performs CCD against dynamic bodies (but not against other bodies with enhanced CCD enabled). This is useful for fast-moving objects like bullets or rockets that need reliable collision detection. */
    var EnhancedCcd(default,default):Bool;
    /** Get the actual physics body that was created by this component. You should be careful, this can of course be null when the object is not enabled or the physics world is not available. It might also get deleted and re-created, so best use this to access, but don't store it. */
    var PhysicsBody(default,never):sandbox.PhysicsBody;
    /** This is a list of all of the triggers that we are touching. */
    var Touching(default,never):system.collections.generic.IEnumerable<sandbox.Collider>;
    /** A list of joints that we're connected to, if any. */
    var Joints(default,never):system.collections.generic.IReadOnlySet<sandbox.Joint>;
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
    function ApplyForce(force:Vector3):Void;
    function ApplyForceAt(position:Vector3, force:Vector3):Void;
    function ApplyImpulse(force:Vector3):Void;
    function ApplyImpulseAt(position:Vector3, force:Vector3):Void;
    function ApplyTorque(force:Vector3):Void;
    /** Clear accumulated linear forces ( and ) during this physics frame that were not yet applied to the physics body. */
    function ClearForces():Void;
    @:protected function DrawGizmos():Void;
    function FindClosestPoint(position:Vector3):Vector3;
    function GetVelocityAtPoint(position:Vector3):Vector3;
    /** Get the world bounds of this object */
    function GetWorldBounds():BBox;
    @:protected function OnDirty():Void;
    @:protected function OnEnabled():Void;
    /** Resets the inertia tensor and its rotation to the values automatically calculated from the attached colliders. This removes any custom overrides set via or . */
    function ResetInertiaTensor():Void;
    overload function SmoothMove(transform:Transform, timeToArrive:Single, timeDelta:Single):Void;
    overload function SmoothMove(position:Vector3, timeToArrive:Single, timeDelta:Single):Void;
    function SmoothRotate(rotation:Rotation, timeToArrive:Single, timeDelta:Single):Void;
}
