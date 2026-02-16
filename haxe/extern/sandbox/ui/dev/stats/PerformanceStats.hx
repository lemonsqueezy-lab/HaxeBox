package sandbox.ui.dev.stats;

@:native("Sandbox.UI.Dev.Stats.PerformanceStats")
extern class PerformanceStats extends sandbox.ui.Panel {
    function new():Void;
    @:protected function BuildHash():Int;
    @:protected function BuildRenderTree(__builder:microsoft.aspnetcore.components.rendering.RenderTreeBuilder):Void;
    @:protected function GetRenderTreeChecksum():String;
}
