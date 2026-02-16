package sandbox.ui;

@:native("Sandbox.UI.ColorHueControl")
extern class ColorHueControl extends sandbox.ui.BaseControl {
    function new():Void;
    @:protected function OnMouseDown(e:sandbox.ui.MousePanelEvent):Void;
    @:protected function OnMouseMove(e:sandbox.ui.MousePanelEvent):Void;
    function Rebuild():Void;
    function Tick():Void;
}
