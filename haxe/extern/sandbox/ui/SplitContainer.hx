package sandbox.ui;

@:native("Sandbox.UI.SplitContainer")
extern class SplitContainer extends sandbox.ui.Panel {
    function new():Void;
    @:protected
    var Left(default,null):sandbox.ui.Panel;
    @:protected
    var Right(default,null):sandbox.ui.Panel;
    @:protected
    var Splitter(default,null):sandbox.ui.Panel;
    @:protected
    var IsDragging(default,null):Bool;
    var Vertical(default,default):Bool;
    var FractionCookie(default,default):String;
    var MinimumFractionLeft(default,default):Single;
    var MinimumFractionRight(default,default):Single;
    @:protected function OnMouseMove(e:sandbox.ui.MousePanelEvent):Void;
    function OnTemplateSlot(element:sandbox.html.INode, slotName:String, panel:sandbox.ui.Panel):Void;
    function SetProperty(name:String, value:String):Void;
    function UpdateSplitFraction(f:Single):Void;
}
