package sandbox.ui;

@:native("Sandbox.UI.ControlSheetGroup")
extern class ControlSheetGroup extends sandbox.ui.Panel {
    function new():Void;
    var Header(default,default):sandbox.ui.ControlSheetGroupHeader;
    var ToggleContainer(default,default):sandbox.ui.Panel;
    var Body(default,default):sandbox.ui.Panel;
    var Closed(default,never):Bool;
    function SetToggle(toggleGroup:sandbox.SerializedProperty):Void;
    function SetVisibility(inspectorVisibilityAttributes:Array<sandbox.InspectorVisibilityAttribute>):Void;
    function Tick():Void;
}
