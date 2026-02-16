package sandbox.menu;

@:native("Sandbox.Menu.GameClosedToast")
extern class GameClosedToast extends sandbox.ui.Panel {
    function new():Void;
    var Package(default,default):sandbox.Package;
    @:protected function BuildRenderTree(__builder:microsoft.aspnetcore.components.rendering.RenderTreeBuilder):Void;
    @:protected function GetRenderTreeChecksum():String;
    @:protected function OnMouseOver(e:sandbox.ui.MousePanelEvent):Void;
    function Tick():Void;
}
