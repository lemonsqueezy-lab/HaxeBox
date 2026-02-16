package sandbox.ui.dev;

@:native("Sandbox.UI.Dev.LogEventPanel")
extern class LogEventPanel extends sandbox.ui.Panel {
    function new():Void;
    @:protected function BuildRenderTree(__builder:microsoft.aspnetcore.components.rendering.RenderTreeBuilder):Void;
    @:protected function GetRenderTreeChecksum():String;
    function OnButtonEvent(e:sandbox.ui.ButtonEvent):Void;
    function Switch(e:sandbox.LogEvent):Void;
}
