package sandbox.ui;

@:native("Sandbox.UI.Button")
extern class Button extends sandbox.ui.Panel {
    overload function new():Void;
    overload function new(text:String, icon:String):Void;
    overload function new(text:String, icon:String, className:String, onClick:system.Action):Void;
    overload function new(text:String, icon:String, onClick:system.Action):Void;
    overload function new(text:String, action:system.Action):Void;
    var Href(default,default):String;
    var Value(default,default):cs.system.Object;
    var HoverMenu(default,default):microsoft.aspnetcore.components.RenderFragment;
    var Disabled(default,default):Bool;
    var Active(default,default):Bool;
    var Text(default,default):String;
    var Help(default,default):String;
    var Icon(default,default):String;
    @:protected
    var TextLabel(null,null):sandbox.ui.Label;
    @:protected
    var IconPanel(null,null):sandbox.ui.IconPanel;
    @:protected
    var HelpLabel(null,null):sandbox.ui.Label;
    @:protected
    var RightColumn(null,null):sandbox.ui.Panel;
    @:protected function BuildHash():Int;
    @:protected function BuildRenderTree(tree:microsoft.aspnetcore.components.rendering.RenderTreeBuilder):Void;
    function Click():Void;
    function DeleteIcon():Void;
    function DeleteText():Void;
    @:protected function GetRenderTreeChecksum():String;
    @:protected function OnMouseDown(e:sandbox.ui.MousePanelEvent):Void;
    function SetContent(value:String):Void;
    function SetProperty(name:String, value:String):Void;
    function SetText(text:String):Void;
    function Tick():Void;
    @:protected function UpdateActiveState():Void;
}
