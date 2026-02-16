package sandbox.ui;

@:native("Sandbox.UI.VideoPanel")
extern class VideoPanel extends sandbox.ui.Panel {
    function new():Void;
    var Source(default,default):String;
    var Repeat(never,default):Bool;
    var Controls(default,default):Bool;
    @:protected function BuildRenderTree(__builder:microsoft.aspnetcore.components.rendering.RenderTreeBuilder):Void;
    @:protected function GetRenderTreeChecksum():String;
    function OnDeleted():Void;
    function Tick():Void;
}
