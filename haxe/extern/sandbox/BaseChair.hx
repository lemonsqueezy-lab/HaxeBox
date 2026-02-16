package sandbox;

@:native("Sandbox.BaseChair")
extern class BaseChair extends sandbox.Component {
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
