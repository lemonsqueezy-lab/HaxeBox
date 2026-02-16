package sandbox;

@:native("Sandbox.MapSkybox3D")
extern class MapSkybox3D extends sandbox.Component {
    function new():Void;
    @:protected function OnDisabled():Void;
    @:protected function OnEnabled():Void;
}
