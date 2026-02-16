package sandbox.menu;

@:native("Sandbox.Menu.GameClosing")
extern class GameClosing extends sandbox.ui.Panel {
    function new():Void;
    var Progress(default,default):Single;
    @:protected function BuildRenderTree(__builder:microsoft.aspnetcore.components.rendering.RenderTreeBuilder):Void;
    @:protected function GetRenderTreeChecksum():String;
}
