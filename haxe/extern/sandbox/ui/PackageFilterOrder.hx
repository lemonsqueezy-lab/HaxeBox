package sandbox.ui;

@:native("Sandbox.UI.PackageFilterOrder")
extern class PackageFilterOrder extends sandbox.ui.Panel {
    function new():Void;
    var Orders(default,default):Array<sandbox.package.SortOrder>;
    var Value(default,default):String;
    var OnChange(default,default):system.Action1<String>;
    @:protected function BuildRenderTree(__builder:microsoft.aspnetcore.components.rendering.RenderTreeBuilder):Void;
    @:protected function GetRenderTreeChecksum():String;
}
