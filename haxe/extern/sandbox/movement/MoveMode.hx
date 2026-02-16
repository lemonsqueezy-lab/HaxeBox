package sandbox.movement;

/** A move mode for this character */
@:native("Sandbox.Movement.MoveMode")
extern class MoveMode extends sandbox.Component {
    @:protected function new():Void;
    var AllowGrounding(default,never):Bool;
    var AllowFalling(default,never):Bool;
    var Controller(default,default):sandbox.PlayerController;
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
