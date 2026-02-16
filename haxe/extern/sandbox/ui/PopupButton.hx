package sandbox.ui;

@:native("Sandbox.UI.PopupButton")
extern class PopupButton extends sandbox.ui.Button {
    function new():Void;
    @:protected
    var Popup(null,null):sandbox.ui.Popup;
    @:protected function OnClick(e:sandbox.ui.MousePanelEvent):Void;
    function Open():Void;
    function Tick():Void;
}
