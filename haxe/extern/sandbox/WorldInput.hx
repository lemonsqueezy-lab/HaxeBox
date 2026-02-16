package sandbox;

/** A router for world input, the best place to put this is on your player's camera. Uses cursor ray when mouse is active, otherwise the direction of this gameobject. You could also put this on a VR controller to interact with world panels. */
@:native("Sandbox.WorldInput")
final extern class WorldInput extends sandbox.Component {
    function new():Void;
    /** Which action is our left clicking button? */
    var LeftMouseAction(default,default):String;
    /** Which action is our right clicking button? */
    var RightMouseAction(default,default):String;
    /** If using VR this will be the hand source for input. */
    var VRHandSource(default,default):sandbox.vr.vrhand.HandSources;
    /** The that is currently hovered by this input. */
    var Hovered(default,never):sandbox.ui.Panel;
    @:protected function OnUpdate():Void;
}
