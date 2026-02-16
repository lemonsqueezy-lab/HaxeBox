package sandbox.ui;

@:native("Sandbox.UI.PackageList")
extern class PackageList extends sandbox.ui.Panel {
    function new():Void;
    var Query(default,default):String;
    var Take(default,default):Int;
    var ShowFilters(default,default):Bool;
    var ItemSize(default,never):Vector2;
    var OnMenu(default,default):system.Action1<sandbox.Package>;
    var OnSelected(default,default):system.Action1<sandbox.Package>;
    var OnFilterChanged(default,default):system.Action1<String>;
    var Packages(default,default):Array<sandbox.Package>;
    var FoundPackages(default,default):system.collections.generic.List<sandbox.Package>;
    var Result(default,default):sandbox.package.FindResult;
    @:protected function BuildRenderTree(__builder:microsoft.aspnetcore.components.rendering.RenderTreeBuilder):Void;
    @:protected function GetRenderTreeChecksum():String;
    @:protected function OnParametersSetAsync():system.threading.tasks.Task;
}
