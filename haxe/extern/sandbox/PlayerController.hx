package sandbox;

@:native("Sandbox.PlayerController")
final extern class PlayerController {
    function new():Void;
    var UseAnimatorControls(default,default):Bool;
    /** The body will usually be a child object with SkinnedModelRenderer */
    var Renderer(default,default):sandbox.SkinnedModelRenderer;
    /** If true we'll show the "create body" button */
    var ShowCreateBodyRenderer(default,never):Bool;
    var RotationAngleLimit(default,default):Single;
    var RotationSpeed(default,default):Single;
    var EnableFootstepSounds(default,default):Bool;
    var FootstepVolume(default,default):Single;
    var FootstepMixer(default,default):sandbox.audio.MixerHandle;
    /** How strongly to look in the eye direction with our eyes */
    var AimStrengthEyes(default,default):Single;
    /** How strongly to turn in the eye direction with our head */
    var AimStrengthHead(default,default):Single;
    /** How strongly to turn in the eye direction with our body */
    var AimStrengthBody(default,default):Single;
    var UseCameraControls(default,default):Bool;
    var EyeDistanceFromTop(default,default):Single;
    var ThirdPerson(default,default):Bool;
    var HideBodyInFirstPerson(default,default):Bool;
    var UseFovFromPreferences(default,default):Bool;
    var CameraOffset(default,default):Vector3;
    var ToggleCameraModeButton(default,default):String;
    var Body(default,default):sandbox.Rigidbody;
    var BodyCollider(default,never):sandbox.CapsuleCollider;
    var FeetCollider(default,never):sandbox.BoxCollider;
    var ColliderObject(default,never):sandbox.GameObject;
    var BodyRadius(default,default):Single;
    var BodyHeight(default,default):Single;
    var BodyMass(default,default):Single;
    var BodyCollisionTags(default,default):sandbox.TagSet;
    /** We will apply extra friction when we're on the ground and our desired velocity is lower than our current velocity, so we will slow down. */
    var BrakePower(default,default):Single;
    /** How much friction to add when we're in the air. This will slow you down unless you have a wish velocity. */
    var AirFriction(default,default):Single;
    var ShowRigidbodyComponent(default,default):Bool;
    var ShowColliderComponents(default,default):Bool;
    var WishVelocity(default,default):Vector3;
    var IsOnGround(default,never):Bool;
    /** Not touching the ground, and not swimming or climbing */
    var IsAirborne(default,never):Bool;
    /** Our actual physical velocity minus our ground velocity */
    var Velocity(default,never):Vector3;
    /** The velocity that the ground underneath us is moving */
    var GroundVelocity(default,default):Vector3;
    /** Set to true when entering a climbing . */
    var IsClimbing(default,default):Bool;
    /** Set to true when entering a swimming . */
    var IsSwimming(default,default):Bool;
    /** The direction we're looking in input space. */
    var EyeAngles(default,default):Angles;
    /** The player's eye position, in first person mode */
    var EyePosition(default,never):Vector3;
    /** The player's eye position, in first person mode */
    var EyeTransform(default,never):Transform;
    /** True if this player is ducking */
    var IsDucking(default,default):Bool;
    /** The distance from the top of the head to the closest ceiling. */
    var Headroom(default,default):Single;
    /** The object we're standing on. Null if we're standing on nothing. */
    var GroundObject(default,default):sandbox.GameObject;
    /** The collider component we're standing on. Null if we're standing nothing */
    var GroundComponent(default,default):sandbox.Component;
    /** If we're stnding on a surface this is it */
    var GroundSurface(default,default):sandbox.Surface;
    /** The friction property of the ground we're standing on. */
    var GroundFriction(default,default):Single;
    /** Are we standing on a surface that is physically dynamic */
    var GroundIsDynamic(default,default):Bool;
    /** Amount of time since this character was last on the ground */
    var TimeSinceGrounded(default,never):sandbox.TimeSince;
    /** Amount of time since this character was last not on the ground */
    var TimeSinceUngrounded(default,never):sandbox.TimeSince;
    var UseInputControls(default,default):Bool;
    var WalkSpeed(default,default):Single;
    var RunSpeed(default,default):Single;
    var DuckedSpeed(default,default):Single;
    var JumpSpeed(default,default):Single;
    var DuckedHeight(default,default):Single;
    /** Amount of seconds it takes to get from your current speed to your requuested speed, if higher */
    var AccelerationTime(default,default):Single;
    /** Amount of seconds it takes to get from your current speed to your requuested speed, if lower */
    var DeaccelerationTime(default,default):Single;
    /** The button that the player will press to use to run */
    var AltMoveButton(default,default):String;
    /** If true then the player will run by default, and holding AltMoveButton will switch to walk */
    var RunByDefault(default,default):Bool;
    /** Allows to player to interact with things by "use"ing them. Usually by pressing the "use" button. */
    var EnablePressing(default,default):Bool;
    /** The button that the player will press to use things */
    var UseButton(default,default):String;
    /** How far from the eye can the player reach to use things */
    var ReachLength(default,default):Single;
    /** When true we'll move the camera around using the mouse */
    var UseLookControls(default,default):Bool;
    var RotateWithGround(default,default):Bool;
    var PitchClamp(default,default):Single;
    /** Allows modifying the eye angle sensitivity. Note that player preference sensitivity is already automatically applied, this is just extra. */
    var LookSensitivity(default,default):Single;
    /** Gets the current character height from when standing, otherwise uses when ducking. */
    var CurrentHeight(default,never):Single;
    var Mode(default,never):sandbox.movement.MoveMode;
    /** The object we're currently looking at */
    var Hovered(default,default):sandbox.Component;
    /** The object we're currently using by holding down USE */
    var Pressed(default,default):sandbox.Component;
    /** The tooltip of the currently hovered Pressable object */
    var Tooltips(default,never):system.collections.generic.List<sandbox.component.ipressable.Tooltip>;
    /** Enable debug overlays for this character */
    var StepDebug(default,default):Bool;
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
    var DebugFootsteps(default,default):Bool;
    /** Return an aabb representing the body */
    function BodyBox(scale:Single, heightScale:Single):BBox;
    function CreateBodyRenderer():Void;
    /** Create a ragdoll gameobject version of our render body. */
    function CreateRagdoll(name:String):sandbox.GameObject;
    /** Adds velocity in a special way. First we subtract any opposite velocity (ie, falling) then we add the velocity, but we clamp it to that direction. This means that if you jump when you're running up a platform, you don't get extra jump power. */
    function Jump(velocity:Vector3):Void;
    @:protected function OnAwake():Void;
    @:protected function OnDestroy():Void;
    @:protected function OnDisabled():Void;
    @:protected function OnEnabled():Void;
    @:protected function OnFixedUpdate():Void;
    function OnJumped():Void;
    @:protected function OnUpdate():Void;
    @:protected function OnValidate():Void;
    /** Play a footstep sound at the given world position. Will only play if the player has a GroundSurface. */
    function PlayFootstepSound(worldPosition:Vector3, volume:Single, foot:Int):Void;
    /** Prevent being grounded for a number of seconds */
    function PreventGrounding(seconds:Single):Void;
    /** Start pressing a target component. This is called automatically when Use is pressed. */
    function StartPressing(obj:sandbox.Component):Void;
    /** Stop pressing. Pressed will become null. */
    function StopPressing():Void;
    /** Trace the aabb body from one position to another and return the result */
    function TraceBody(from:Vector3, to:Vector3, scale:Single, heightScale:Single):sandbox.SceneTraceResult;
    /** Update the animation for this renderer. This will update the body rotation etc too. */
    function UpdateAnimation(renderer:sandbox.SkinnedModelRenderer):Void;
    /** Called during FixedUpdate when UseInputControls is enabled. Will duck if requested. If not, and we're ducked, will unduck if there is room */
    function UpdateDucking(wantsDuck:Bool):Void;
    /** Called in Update when Using is enabled */
    function UpdateLookAt():Void;
}
