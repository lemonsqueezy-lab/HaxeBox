package sandbox;

/** A directional light that casts shadows, like the sun. */
@:native("Sandbox.DirectionalLight")
extern class DirectionalLight extends sandbox.Light {
    function new():Void;
    /** Color of the ambient sky color This is kept for long term support, the recommended way to do this is with an Ambient Light component. */
    var SkyColor(default,default):Color;
    @:protected function CreateSceneObject():sandbox.SceneLight;
    @:protected function DrawGizmos():Void;
    @:protected function OnAwake():Void;
    @:protected function UpdateSceneObject(l:sandbox.SceneLight):Void;
}
