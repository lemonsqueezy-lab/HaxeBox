package sandbox;

@:native("Sandbox.Light")
extern class Light extends sandbox.Component {
    @:protected function new():Void;
    /** The main color of the light */
    var LightColor(default,default):Color;
    /** Should this light cast shadows? */
    var Shadows(default,default):Bool;
    var FogMode(default,default):sandbox.light.FogInfluence;
    var FogStrength(default,default):Single;
    @:protected function CreateSceneObject():sandbox.SceneLight;
    @:protected function OnAwake():Void;
    @:protected function OnDirty():Void;
    @:protected function OnDisabled():Void;
    @:protected function OnEnabled():Void;
    /** Tags have been updated - lets update our light's tags */
    @:protected function OnTagsChanged():Void;
    @:protected function UpdateSceneObject(o:sandbox.SceneLight):Void;
}
