package sandbox.ui;

@:native("Sandbox.UI.PackageFilters")
extern class PackageFilters extends sandbox.ui.Panel {
    function new():Void;
    var Query(default,default):String;
    var SearchString(default,default):String;
    var Result(default,default):sandbox.package.FindResult;
    var OnChange(default,default):system.Action1<String>;
    @:protected function BuildRenderTree(__builder:microsoft.aspnetcore.components.rendering.RenderTreeBuilder):Void;
    @:protected function GetRenderTreeChecksum():String;
    @:protected function OnParametersSet():Void;
    function Tick():Void;
}
