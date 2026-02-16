package sandbox.vr;

/** Updates the the VR anchor based on a GameObject's transform. */
@:native("Sandbox.VR.VRAnchor")
extern class VRAnchor extends sandbox.Component {
    function new():Void;
    @:protected function OnPreRender():Void;
    @:protected function OnUpdate():Void;
}
