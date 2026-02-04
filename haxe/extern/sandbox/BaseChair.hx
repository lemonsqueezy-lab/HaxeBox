package sandbox;

@:native("Sandbox.BaseChair")
extern class BaseChair {
    function new():Void;
    /** A GameObject representing the seat position */
    var SeatPosition(default,default):sandbox.GameObject;
    /** The sitting pose to use when a player is seated */
    var SitPose(default,default):sandbox.basechair.AnimatorSitPose;
    /** Height offset for sitting position, from -1 (lowest) to 1 (highest) */
    var SitHeight(default,default):Single;
    /** A GameObject representing the eye position */
    var EyePosition(default,default):sandbox.GameObject;
    /** Pitch range for seated players */
    var PitchRange(default,default):Vector2;
    /** Yaw range for seated players */
    var YawRange(default,default):Vector2;
    var ExitPoints(default,default):Array<sandbox.GameObject>;
    /** Returns true if the chair is currently occupied */
    var IsOccupied(default,never):Bool;
    /** The title of this chair's tooltip. Empty to disable. */
    var TooltipTitle(default,default):String;
    /** The icon for this chair's tooltip. Either Material Icons or an Emoji. */
    var TooltipIcon(default,default):String;
    /** A longer description for this chair's tooltip. */
    var TooltipDescription(default,default):String;
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
    /** Called on the host to request leaving the chair. */
    function AskToLeave(player:sandbox.PlayerController):Void;
    /** Calculates the eye transform for a seated player */
    function CalculateEyeTransform(controller:sandbox.PlayerController):Transform;
    /** Return true if this player can enter the chair */
    function CanEnter(player:sandbox.PlayerController):Bool;
    /** Return true if this player can leave the chair */
    function CanLeave(player:sandbox.PlayerController):Bool;
    /** Chair is usable if the player can enter */
    function CanPress(e:sandbox.component.ipressable.Event):Bool;
    /** Clamps the eye angles of a seated player between the PitchRange and YawRange */
    @:protected function ClampEyes(controller:sandbox.PlayerController):Void;
    /** Draws the player model sitting in the chair if it's selected */
    @:protected function DrawGizmos():Void;
    /** Called on the client to eject the player from the chair. */
    function Eject(player:sandbox.PlayerController):Void;
    /** Returns a position to place the player when they exit the chair. This searches through ExitPoints to find the best one, which is usually the one the player is most facing towards. */
    function FindBestExitPoint():Vector3;
    /** Get the transform representing the eye position when seated */
    function GetEyeTransform():Transform;
    /** Gets the player that is currently occupying the chair */
    function GetOccupant():sandbox.PlayerController;
    function GetTooltip(e:sandbox.component.ipressable.Event):Null<sandbox.component.ipressable.Tooltip>;
    /** Called when the player has pressed to use the chair. Only called if CanPress returned true. */
    function Press(e:sandbox.component.ipressable.Event):Bool;
    /** Called on the client to place the player in the chair. */
    function Sit(player:sandbox.PlayerController):Void;
    /** Called to update the player's animator when seated */
    function UpdatePlayerAnimator(controller:sandbox.PlayerController, renderer:sandbox.SkinnedModelRenderer):Void;
}
