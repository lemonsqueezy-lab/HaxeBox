package sandbox.ui;

@:native("Sandbox.UI.Form")
extern class Form extends sandbox.ui.Panel {
    function new():Void;
    @:protected
    var currentGroup(null,null):sandbox.ui.Panel;
    function AddHeader(title:String, icon:String):Void;
    function AddRow(entryTitle:String, control:sandbox.ui.Panel):Void;
    function Clear():Void;
    @:protected function OnEvent(e:sandbox.ui.PanelEvent):Void;
}
