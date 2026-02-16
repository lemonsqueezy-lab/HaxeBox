package sandbox;

@:native("Sandbox.Collider")
extern class Collider extends sandbox.Component {
    @:protected function new():Void;
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
    @:protected
    var _keyframeBody(null,null):sandbox.PhysicsBody;
    @:protected function CalculateLocalBounds():Void;
    /** Apply any things that we an apply after they're created */
    @:protected function ConfigureShapes():Void;
    /** Overridable in derived component to create shapes */
    @:protected overload function CreatePhysicsShapes(targetBody:sandbox.PhysicsBody):system.collections.generic.IEnumerable<sandbox.PhysicsShape>;
    @:protected overload function CreatePhysicsShapes(targetBody:sandbox.PhysicsBody, local:Transform):system.collections.generic.IEnumerable<sandbox.PhysicsShape>;
    /** Returns the closest point to the given one between all convex shapes of this body. */
    function FindClosestPoint(worldPoint:Vector3):Vector3;
    /** Get the velocity of this collider at the specific point in world coordinates. */
    function GetVelocityAtPoint(worldPoint:Vector3):Vector3;
    /** Get the world bounds of this object */
    function GetWorldBounds():BBox;
    function OnPhysicsChanged():Void;
    @:protected function Rebuild():Void;
    @:protected function RebuildImmediately():Void;
}
