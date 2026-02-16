package sandbox;

@:native("Sandbox.MapObjectComponent")
extern class MapObjectComponent extends sandbox.Component {
    function new():Void;
    var RecreateMapObjects(default,default):system.Action;
    @:protected function OnDisabled():Void;
    @:protected function OnEnabled():Void;
}
