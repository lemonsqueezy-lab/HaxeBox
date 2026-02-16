package sandbox.ui;

@:native("Sandbox.UI.PackageTagFilter")
extern class PackageTagFilter extends sandbox.ui.Panel {
    function new():Void;
    var Result(default,default):sandbox.package.FindResult;
    var OnTagsChanged(default,default):system.Action;
    var Selected(default,default):system.collections.generic.List<String>;
    @:protected function BuildHash():Int;
    @:protected function BuildRenderTree(__builder:microsoft.aspnetcore.components.rendering.RenderTreeBuilder):Void;
    @:protected function GetRenderTreeChecksum():String;
    @:protected function OnParametersSet():Void;
}
