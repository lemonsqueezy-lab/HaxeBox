package sandbox;

/** If this exists and is enabled in a scene, then the client will hear from this point rather than from the cameras point of view. */
@:native("Sandbox.AudioListener")
final extern class AudioListener extends sandbox.Component {
    function new():Void;
    /** If true, while the audio listener position will be used, the rotation element will come from the camera. */
    var UseCameraDirection(default,default):Bool;
    @:protected function OnDisabled():Void;
    @:protected function OnEnabled():Void;
}
