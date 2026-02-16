package sandbox.ui;

@:native("Sandbox.UI.LoaderFullScreen")
extern class LoaderFullScreen extends sandbox.ui.Panel {
    function new():Void;
    var timeSinceShown(default,default):sandbox.RealTimeSince;
    @:protected function BuildHash():Int;
    @:protected function BuildRenderTree(__builder:microsoft.aspnetcore.components.rendering.RenderTreeBuilder):Void;
    @:protected function GetRenderTreeChecksum():String;
    function Tick():Void;
}
