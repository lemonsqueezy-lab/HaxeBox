package sandbox.ui;

/** A panel that displays an interactive web page. */
@:native("Sandbox.UI.WebPanel")
extern class WebPanel extends sandbox.ui.Panel {
    function new():Void;
    /** Access to the HTML surface to change URL, etc. */
    var Surface(default,never):sandbox.WebSurface;
    var Url(default,default):String;
    @:protected function OnBlur(e:sandbox.ui.PanelEvent):Void;
    function OnButtonEvent(e:sandbox.ui.ButtonEvent):Void;
    function OnDeleted():Void;
    @:protected function OnFocus(e:sandbox.ui.PanelEvent):Void;
    function OnKeyTyped(k:system.Char):Void;
    function OnLayout(layoutRect:sandbox.Rect):Void;
    @:protected function OnMouseDown(e:sandbox.ui.MousePanelEvent):Void;
    @:protected function OnMouseMove(e:sandbox.ui.MousePanelEvent):Void;
    @:protected function OnMouseUp(e:sandbox.ui.MousePanelEvent):Void;
    function OnMouseWheel(value:Vector2):Void;
}
