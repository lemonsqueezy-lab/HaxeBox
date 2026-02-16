package sandbox.movement;

/** The character is sitting */
@:native("Sandbox.Movement.SitMoveMode")
final extern class SitMoveMode extends sandbox.movement.MoveMode {
    function new():Void;
    /** Get the eye transform from the chair we're sitting in */
    function CalculateEyeTransform():Transform;
    /** Entering the chair, disable body and collider */
    function OnModeBegin():Void;
    /** Leaving the chair, re-enable body and collider */
    function OnModeEnd(next:sandbox.movement.MoveMode):Void;
    /** Score this move mode highly if we're parented to a chair */
    function Score(controller:sandbox.PlayerController):Int;
    /** Update the animator while sitting in a chair */
    function UpdateAnimator(renderer:sandbox.SkinnedModelRenderer):Void;
    /** Move is always zero while sitting */
    function UpdateMove(eyes:Rotation, input:Vector3):Vector3;
}
