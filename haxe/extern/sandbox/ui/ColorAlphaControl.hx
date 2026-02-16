package sandbox.ui;

@:native("Sandbox.UI.ColorAlphaControl")
extern class ColorAlphaControl extends sandbox.ui.BaseControl {
    function new():Void;
    @:protected function OnMouseDown(e:sandbox.ui.MousePanelEvent):Void;
    @:protected function OnMouseMove(e:sandbox.ui.MousePanelEvent):Void;
    function Rebuild():Void;
    function Tick():Void;
}
