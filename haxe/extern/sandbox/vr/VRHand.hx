package sandbox.vr;

/** Updates the parameters on an on this GameObject based on the skeletal data from SteamVR. Useful for quick hand posing based on controller input. */
@:native("Sandbox.VR.VRHand")
extern class VRHand extends sandbox.Component {
    function new():Void;
    /** Which to use when updating this component */
    var SkinnedModelComponent(default,default):sandbox.SkinnedModelRenderer;
    /** Which hand should we use to update the parameters? */
    var HandSource(default,default):sandbox.vr.vrhand.HandSources;
    /** What motion range should we use to update the parameters? */
    var MotionRange(default,default):sandbox.vr.MotionRange;
    @:protected function OnPreRender():Void;
    @:protected function OnUpdate():Void;
}
