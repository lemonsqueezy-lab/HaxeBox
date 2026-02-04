package sandbox.movement;

/** A move mode for this character */
@:native("Sandbox.Movement.MoveMode")
extern class MoveMode {
    var AllowGrounding(default,never):Bool;
    var AllowFalling(default,never):Bool;
    var Controller(default,default):sandbox.PlayerController;
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
    function AddVelocity():Void;
    /** Get the position of the player's eye */
    function CalculateEyeTransform():Transform;
    function IsStandableSurace(result:sandbox.SceneTraceResult):Bool;
    function IsStandableSurface(result:sandbox.SceneTraceResult):Bool;
    /** This mode has just started */
    function OnModeBegin():Void;
    /** This mode has stopped. We're swapping to another move mode. */
    function OnModeEnd(next:sandbox.movement.MoveMode):Void;
    /** Updates the of . */
    @:protected function OnRotateRenderBody(renderer:sandbox.SkinnedModelRenderer):Void;
    /** Set animation parameters on to look towards . */
    @:protected function OnUpdateAnimatorLookDirection(renderer:sandbox.SkinnedModelRenderer):Void;
    /** Sets animation parameters on describing the movement style, like swimming, falling, or ducking. */
    @:protected function OnUpdateAnimatorState(renderer:sandbox.SkinnedModelRenderer):Void;
    /** Sets animation parameters on based on the current and . */
    @:protected function OnUpdateAnimatorVelocity(renderer:sandbox.SkinnedModelRenderer):Void;
    /** Called after the physics step is run */
    function PostPhysicsStep():Void;
    /** Called before the physics step is run */
    function PrePhysicsStep():Void;
    /** Highest number becomes the new control mode */
    function Score(controller:sandbox.PlayerController):Int;
    /** If we're on the ground, make sure we stay there by falling to the ground */
    @:protected function StickToGround(maxDistance:Single):Void;
    /** If we're approaching a step, step up if possible */
    @:protected function TrySteppingUp(maxDistance:Single):Void;
    /** Update the animator which is available at Controller.Renderer. */
    function UpdateAnimator(renderer:sandbox.SkinnedModelRenderer):Void;
    /** Called to update the camera each frame */
    function UpdateCamera(cam:sandbox.CameraComponent):Void;
    /** Read inputs, return WishVelocity */
    function UpdateMove(eyes:Rotation, input:Vector3):Vector3;
    function UpdateRigidBody(body:sandbox.Rigidbody):Void;
}
