package sandbox.ui;

@:native("Sandbox.UI.VideoControls")
extern class VideoControls extends sandbox.ui.Panel {
    function new():Void;
    var VideoPlayer(default,default):sandbox.VideoPlayer;
    @:protected function BuildHash():Int;
    @:protected function BuildRenderTree(__builder:microsoft.aspnetcore.components.rendering.RenderTreeBuilder):Void;
    @:protected function GetRenderTreeChecksum():String;
    @:protected function OnParametersSet():Void;
}
