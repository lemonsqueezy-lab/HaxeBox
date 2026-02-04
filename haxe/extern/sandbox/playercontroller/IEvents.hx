package sandbox.playercontroller;

/** Events from the PlayerController */
@:native("Sandbox.PlayerController.IEvents")
extern class IEvents {
    /** We pressed USE but it did nothing */
    function FailPressing():Void;
    /** Used by the Using system to find components we can interact with. By default we can only interact with IPressable components. Return a component if we can use it, or else return null. */
    function GetUsableComponent(go:sandbox.GameObject):sandbox.Component;
    function OnEyeAngles(angles:Angles):Void;
    /** The player has just jumped */
    function OnJumped():Void;
    /** The player has landed on the ground, after falling this distance. */
    function OnLanded(distance:Single, impactVelocity:Vector3):Void;
    /** Called after we've set the camera up */
    function PostCameraSetup(cam:sandbox.CameraComponent):Void;
    /** We have a chance to do something before input is processed */
    function PreInput():Void;
    /** We have started using something (use was pressed) */
    function StartPressing(target:sandbox.Component):Void;
    /** We have started using something (use was pressed) */
    function StopPressing(target:sandbox.Component):Void;
}
