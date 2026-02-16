package sandbox;

/** Emits light in all directions from a point in space. */
@:native("Sandbox.PointLight")
extern class PointLight extends sandbox.Light {
    function new():Void;
    var Radius(default,default):Single;
    var Attenuation(default,default):Single;
    @:protected function CreateSceneObject():sandbox.SceneLight;
    @:protected function DrawGizmos():Void;
    @:protected function OnAwake():Void;
    @:protected function UpdateSceneObject(o:sandbox.SceneLight):Void;
}
