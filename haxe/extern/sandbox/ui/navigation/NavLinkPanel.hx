package sandbox.ui.navigation;

@:native("Sandbox.UI.Navigation.NavLinkPanel")
extern class NavLinkPanel extends sandbox.ui.Panel {
    function new():Void;
    var HRef(default,default):String;
    var Match(default,default):String;
    @:protected function OnClick(e:sandbox.ui.MousePanelEvent):Void;
    function OnParentChanged():Void;
    function Tick():Void;
}
