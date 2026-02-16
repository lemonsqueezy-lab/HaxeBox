package sandbox.ui;

@:native("Sandbox.UI.MenuPanel")
extern class MenuPanel extends sandbox.ui.Panel {
    function new():Void;
    function AddOption(icon:String, text:String, action:system.Action):Void;
    function AddSpacer():Void;
    @:protected function BuildRenderTree(__builder:microsoft.aspnetcore.components.rendering.RenderTreeBuilder):Void;
    function Close():Void;
    @:protected function GetRenderTreeChecksum():String;
    function OnLayout(layoutRect:sandbox.Rect):Void;
    static function Open(source:sandbox.ui.Panel):sandbox.ui.MenuPanel;
}
