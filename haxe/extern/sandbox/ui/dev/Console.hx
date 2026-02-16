package sandbox.ui.dev;

@:native("Sandbox.UI.Dev.Console")
extern class Console extends sandbox.ui.Panel {
    function new():Void;
    @:protected function OnMouseDown(e:sandbox.ui.MousePanelEvent):Void;
    function Tick():Void;
}
