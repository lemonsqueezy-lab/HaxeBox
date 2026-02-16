package sandbox.ui.dev;

@:native("Sandbox.UI.Dev.DeveloperMode")
extern class DeveloperMode extends sandbox.ui.Panel {
    function new():Void;
    var Console(default,default):sandbox.ui.dev.Console;
    @:protected
    static var Open(default,null):Bool;
    @:protected function BuildRenderTree(__builder:microsoft.aspnetcore.components.rendering.RenderTreeBuilder):Void;
    function FindPopupPanel():sandbox.ui.Panel;
    @:protected function GetRenderTreeChecksum():String;
    function Tick():Void;
}
