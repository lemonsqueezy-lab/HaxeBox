package sandbox;

@:native("Sandbox.ScreenSpaceReflections")
extern class ScreenSpaceReflections extends sandbox.BasePostProcess<sandbox.ScreenSpaceReflections> {
    function new():Void;
    /** Stop tracing rays after this roughness value. This is meant to be used to avoid tracing rays for very rough surfaces which are unlikely to have any reflections. This is a performance optimization. */
    var RoughnessCutoff(default,never):Single;
    var Denoise(default,default):Bool;
    @:protected function OnDisabled():Void;
    @:protected function OnEnabled():Void;
    function Render():Void;
}
