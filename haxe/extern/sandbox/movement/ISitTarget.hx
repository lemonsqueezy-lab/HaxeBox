package sandbox.movement;

/** A component that can be sat in by a player. If the player is parented to an object with this component, they will be sitting in it. */
@:native("Sandbox.Movement.ISitTarget")
extern class ISitTarget {
    /** Player wants to leave the chair */
    function AskToLeave(controller:sandbox.PlayerController):Void;
    /** Get the transform representing the eye position when seated. This is the first person eye position, not the third person camera position. */
    function CalculateEyeTransform(controller:sandbox.PlayerController):Transform;
    /** Here you can set any animator parameters needed for sitting in this chair */
    function UpdatePlayerAnimator(controller:sandbox.PlayerController, renderer:sandbox.SkinnedModelRenderer):Void;
}
