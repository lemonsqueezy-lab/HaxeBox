package sandbox;

@:native("Sandbox.ControlModeSettings")
extern class ControlModeSettings {
    function new():Void;
    var Keyboard(default,default):Bool;
    var VR(default,default):Bool;
    var Gamepad(default,default):Bool;
    var IsVROnly(default,never):Bool;
}
