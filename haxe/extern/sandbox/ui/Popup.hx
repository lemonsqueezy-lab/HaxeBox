package sandbox.ui;

@:native("Sandbox.UI.Popup")
extern class Popup extends sandbox.ui.BasePopup {
    overload function new():Void;
    overload function new(sourcePanel:sandbox.ui.Panel, position:sandbox.ui.popup.PositionMode, offset:Single):Void;
    var PopupSource(default,default):sandbox.ui.Panel;
    var SelectedChild(default,default):sandbox.ui.Panel;
    var Position(default,default):sandbox.ui.popup.PositionMode;
    var PopupSourceOffset(default,default):Single;
    var CloseWhenParentIsHidden(default,default):Bool;
    var Title(default,default):String;
    var Icon(default,default):String;
    @:protected
    var Header(null,null):sandbox.ui.Panel;
    @:protected
    var TitleLabel(null,null):sandbox.ui.Label;
    @:protected
    var IconPanel(null,null):sandbox.ui.IconPanel;
    overload function AddOption(text:String, action:system.Action):sandbox.ui.Panel;
    overload function AddOption(text:String, icon:String, action:system.Action):sandbox.ui.Panel;
    function Failure():Void;
    function MoveSelection(dir:Int):Void;
    function OnLayout(layoutRect:sandbox.Rect):Void;
    function SetPositioning(sourcePanel:sandbox.ui.Panel, position:sandbox.ui.popup.PositionMode, offset:Single):Void;
    function Success():Void;
    function Tick():Void;
}
