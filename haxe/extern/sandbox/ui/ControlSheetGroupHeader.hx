package sandbox.ui;

@:native("Sandbox.UI.ControlSheetGroupHeader")
extern class ControlSheetGroupHeader extends sandbox.ui.Panel {
    function new():Void;
    var Title(default,default):String;
    var Icon(default,default):String;
    var ToggleProperty(default,default):sandbox.SerializedProperty;
    @:protected function OnMouseDown(e:sandbox.ui.MousePanelEvent):Void;
    function Tick():Void;
}
