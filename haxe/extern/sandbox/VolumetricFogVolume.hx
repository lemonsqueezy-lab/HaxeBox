package sandbox;

/** Adds a volumetric fog volume to the scene. */
@:native("Sandbox.VolumetricFogVolume")
extern class VolumetricFogVolume extends sandbox.Component {
    function new():Void;
    var Bounds(default,default):BBox;
    var Strength(default,default):Single;
    var FalloffExponent(default,default):Single;
    @:protected function DrawGizmos():Void;
    @:protected function OnDisabled():Void;
    @:protected function OnEnabled():Void;
    @:protected function OnPreRender():Void;
}
