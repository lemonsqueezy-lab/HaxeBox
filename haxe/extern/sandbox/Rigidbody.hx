package sandbox;

/** Adds physics properties to an object. Requires a collider to be attached to the same object. */
@:native("Sandbox.Rigidbody")
final extern class Rigidbody extends sandbox.Component {
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
