package sandbox.ui;

@:native("Sandbox.UI.ControlSheetRow")
extern class ControlSheetRow extends sandbox.ui.Panel {
    function new():Void;
    var Property(default,default):sandbox.SerializedProperty;
    @:protected function OnParametersSet():Void;
    function Tick():Void;
}
