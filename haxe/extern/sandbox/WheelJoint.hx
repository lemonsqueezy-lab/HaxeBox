package sandbox;

/** The wheel joint can be used to simulate wheels on vehicles. The wheel joint restricts body B to move along a local axis in body A. Body B is free to rotate. Supports a linear spring, linear limits, and a rotational motor. The assumption is that you will create this joint on the wheel body.This will enable suspension to be in the correct direction. */
@:native("Sandbox.WheelJoint")
final extern class WheelJoint {
    function new():Void;
    var EnableSuspensionLimit(default,default):Bool;
    var SuspensionLimits(default,default):Vector2;
    var EnableSpinMotor(default,default):Bool;
    var MaxSpinTorque(default,default):Single;
    var SpinMotorSpeed(default,default):Single;
    var EnableSuspension(default,default):Bool;
    var SuspensionHertz(default,default):Single;
    var SuspensionDampingRatio(default,default):Single;
    var EnableSteering(default,default):Bool;
    var SteeringHertz(default,default):Single;
    var SteeringDampingRatio(default,default):Single;
    var TargetSteeringAngle(default,default):Single;
    var MaxSteeringTorque(default,default):Single;
    var EnableSteeringLimit(default,default):Bool;
    var SteeringLimits(default,default):Vector2;
    var SpinSpeed(default,never):Single;
    var SpinTorque(default,never):Single;
    var SteeringAngle(default,never):Single;
    var SteeringTorque(default,never):Single;
    /** Are local frames calculated automatically or set manually. See , */
    var Attachment(default,default):sandbox.joint.AttachmentMode;
    /** Only used on joint creation. See */
    var LocalFrame1(default,default):Transform;
    /** Only used on joint creation. See */
    var LocalFrame2(default,default):Transform;
    /** The body this joint is anchored to. If this is null then it will use the current GameObject as the anchor. */
    var AnchorBody(default,default):sandbox.GameObject;
    /** Game object to find the body to attach this joint to. */
    var Body(default,default):sandbox.GameObject;
    /** Enable or disable collision between the two bodies. */
    var EnableCollision(default,default):Bool;
    /** Is the joint broken on start. */
    var StartBroken(default,default):Bool;
    /** Strength of the linear constraint. If it takes any more energy than this, it'll break. */
    var BreakForce(default,default):Single;
    /** Strength of the angular constraint. If it takes any more energy than this, it'll break. */
    var BreakTorque(default,default):Single;
    /** Called when the joint breaks. */
    var OnBreak(default,default):system.Action;
    /** Current linear stress applied to the joint. */
    var LinearStress(default,never):Single;
    /** Current angular stress applied to the joint. */
    var AngularStress(default,never):Single;
    /** Is the joint currently broken and inactive. */
    var IsBroken(default,never):Bool;
    /** The source physics body this joint is attached to. */
    var Body1(default,never):sandbox.PhysicsBody;
    /** The source GameObject we're connected to */
    var Object1(default,never):sandbox.GameObject;
    /** The target physics body this joint is constraining. */
    var Body2(default,never):sandbox.PhysicsBody;
    /** The target GameObject we're connected to */
    var Object2(default,never):sandbox.GameObject;
    /** A specific point this joint is attached at on */
    var Point1(default,default):sandbox.physics.PhysicsPoint;
    /** A specific point this joint is attached at on */
    var Point2(default,default):sandbox.physics.PhysicsPoint;
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
    @:protected function CreateJoint(point1:sandbox.physics.PhysicsPoint, point2:sandbox.physics.PhysicsPoint):sandbox.physics.PhysicsJoint;
    @:protected function DrawGizmos():Void;
}
