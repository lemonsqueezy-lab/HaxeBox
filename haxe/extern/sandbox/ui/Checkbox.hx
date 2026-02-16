package sandbox.ui;

@:native("Sandbox.UI.Checkbox")
extern class Checkbox extends sandbox.ui.Panel {
    function new():Void;
    var ValueChanged(default,default):system.Action1<Bool>;
    @:protected
    var CheckMark(default,null):sandbox.ui.Panel;
    var Checked(default,default):Bool;
    var Value(default,default):Bool;
    @:protected
    var Label(default,null):sandbox.ui.Label;
    var LabelText(default,default):String;
    @:protected function OnClick(e:sandbox.ui.MousePanelEvent):Void;
    @:protected function OnMouseDown(e:sandbox.ui.MousePanelEvent):Void;
    function OnValueChanged():Void;
    function SetContent(value:String):Void;
    function SetProperty(name:String, value:String):Void;
    @:protected function UpdateState():Void;
}
