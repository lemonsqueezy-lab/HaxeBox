package sandbox.ui.dev.stats;

@:native("Sandbox.UI.Dev.Stats.StatValue")
extern class StatValue extends sandbox.ui.Panel {
    function new():Void;
    var Value(default,default):String;
    var Title(default,default):String;
    @:protected function BuildRenderTree(__builder:microsoft.aspnetcore.components.rendering.RenderTreeBuilder):Void;
    @:protected function GetRenderTreeChecksum():String;
}
