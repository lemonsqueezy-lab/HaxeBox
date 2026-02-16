package sandbox.ui.dev;

@:native("Sandbox.UI.Dev.ConsoleRow")
extern class ConsoleRow extends sandbox.ui.Panel {
    function new():Void;
    var classes(default,never):String;
    var Event(default,default):sandbox.LogEvent;
    var AutoDelete(default,default):Bool;
    var TimeUntilDelete(default,default):sandbox.RealTimeUntil;
    var OnEntryClicked(default,default):system.Action1<sandbox.LogEvent>;
    @:protected function BuildHash():Int;
    @:protected function BuildRenderTree(__builder:microsoft.aspnetcore.components.rendering.RenderTreeBuilder):Void;
    @:protected function GetRenderTreeChecksum():String;
    @:protected function OnClick(e:sandbox.ui.MousePanelEvent):Void;
    @:protected function OnMouseDown(e:sandbox.ui.MousePanelEvent):Void;
}
