package sandbox.menu;

@:native("Sandbox.Menu.FeaturedPackage")
extern class FeaturedPackage extends sandbox.ui.Panel {
    function new():Void;
    var Package(default,default):sandbox.Package;
    var Large(default,default):Bool;
    var List(default,default):Bool;
    @:protected function BuildRenderTree(__builder:microsoft.aspnetcore.components.rendering.RenderTreeBuilder):Void;
    @:protected function GetRenderTreeChecksum():String;
    @:protected function OnParametersSetAsync():system.threading.tasks.Task;
    function UpdatedString():String;
}
