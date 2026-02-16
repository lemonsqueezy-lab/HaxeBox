package sandbox;

/** Drive morphs with lipsync from sounds. */
@:native("Sandbox.LipSync")
final extern class LipSync extends sandbox.Component {
    function new():Void;
    var Sound(default,default):sandbox.BaseSoundComponent;
    var Renderer(default,default):sandbox.SkinnedModelRenderer;
    var MorphScale(default,default):Single;
    var MorphSmoothTime(default,default):Single;
    @:protected function OnDisabled():Void;
    @:protected function OnUpdate():Void;
}
