package sandbox.ui;

@:native("Sandbox.UI.PackageCategoryFilter")
extern class PackageCategoryFilter extends sandbox.ui.Panel {
    function new():Void;
    var Result(default,default):sandbox.package.FindResult;
    var Facet(default,default):sandbox.package.Facet;
    var Selected(default,default):system.collections.generic.Dictionary<String,String>;
    @:protected function BuildHash():Int;
    @:protected function BuildRenderTree(__builder:microsoft.aspnetcore.components.rendering.RenderTreeBuilder):Void;
    @:protected function GetRenderTreeChecksum():String;
    @:protected function OnParametersSet():Void;
}
