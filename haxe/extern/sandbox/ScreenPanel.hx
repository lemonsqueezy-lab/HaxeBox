package sandbox;

/** Renders any attached PanelComponents to the screen. Acts as the root for all your UI components. */
@:native("Sandbox.ScreenPanel")
final extern class ScreenPanel extends sandbox.Component {
    function new():Void;
    var Opacity(default,default):Single;
    var Scale(default,default):Single;
    var AutoScreenScale(default,default):Bool;
    var ScaleStrategy(default,default):sandbox.screenpanel.AutoScale;
    var ZIndex(default,default):Int;
    var TargetCamera(default,default):sandbox.CameraComponent;
    function GetPanel():sandbox.ui.Panel;
    @:protected function OnAwake():Void;
    @:protected function OnDestroy():Void;
    @:protected function OnDisabled():Void;
    @:protected function OnEnabled():Void;
    @:protected function OnUpdate():Void;
    @:protected function OnValidate():Void;
}
