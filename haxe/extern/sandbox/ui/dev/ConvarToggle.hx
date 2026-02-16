package sandbox.ui.dev;

@:native("Sandbox.UI.Dev.ConvarToggle")
extern class ConvarToggle extends sandbox.ui.Panel {
    function new():Void;
    var Title(default,default):String;
    var ConVar(default,default):String;
    var On(default,default):String;
    var Off(default,default):String;
    @:protected function BuildRenderTree(__builder:microsoft.aspnetcore.components.rendering.RenderTreeBuilder):Void;
    @:protected function GetRenderTreeChecksum():String;
    @:protected function OnClick(e:sandbox.ui.MousePanelEvent):Void;
    function Tick():Void;
    function Toggle():Void;
}
