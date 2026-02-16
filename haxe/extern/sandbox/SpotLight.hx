package sandbox;

/** Emits light in a specific direction in a cone shape. */
@:native("Sandbox.SpotLight")
extern class SpotLight extends sandbox.Light {
    function new():Void;
    var Radius(default,default):Single;
    var ConeOuter(default,default):Single;
    var ConeInner(default,default):Single;
    var Attenuation(default,default):Single;
    var Cookie(default,default):sandbox.Texture;
    @:protected function CreateSceneObject():sandbox.SceneLight;
    @:protected function DrawGizmos():Void;
    @:protected function OnAwake():Void;
    @:protected function UpdateSceneObject(o:sandbox.SceneLight):Void;
}
