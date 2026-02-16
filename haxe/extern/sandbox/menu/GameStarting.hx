package sandbox.menu;

@:native("Sandbox.Menu.GameStarting")
extern class GameStarting extends sandbox.ui.Panel {
    function new():Void;
    @:protected function BuildRenderTree(__builder:microsoft.aspnetcore.components.rendering.RenderTreeBuilder):Void;
    @:protected function GetRenderTreeChecksum():String;
    function Tick():Void;
}
