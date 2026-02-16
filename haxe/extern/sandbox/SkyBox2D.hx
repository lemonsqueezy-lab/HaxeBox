package sandbox;

/** Adds a 2D skybox to the world */
@:native("Sandbox.SkyBox2D")
extern class SkyBox2D extends sandbox.Component {
    function new():Void;
    var Tint(default,default):Color;
    var SkyIndirectLighting(default,default):Bool;
    var SkyMaterial(default,default):sandbox.Material;
    var SkyTexture(default,never):sandbox.Texture;
    @:protected function OnAwake():Void;
    @:protected function OnDirty():Void;
    @:protected function OnDisabled():Void;
    @:protected function OnEnabled():Void;
    /** Tags have been updated */
    @:protected function OnTagsChanged():Void;
}
