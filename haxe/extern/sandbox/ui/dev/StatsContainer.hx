package sandbox.ui.dev;

@:native("Sandbox.UI.Dev.StatsContainer")
extern class StatsContainer extends sandbox.ui.Panel {
    function new():Void;
    @:protected function BuildHash():Int;
    @:protected function BuildRenderTree(__builder:microsoft.aspnetcore.components.rendering.RenderTreeBuilder):Void;
    @:protected function GetRenderTreeChecksum():String;
}
