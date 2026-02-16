package sandbox.ui;

@:native("Sandbox.UI.PackageFilterFacet")
extern class PackageFilterFacet extends sandbox.ui.Panel {
    function new():Void;
    var Facet(default,default):sandbox.package.Facet;
    var Value(default,default):String;
    var OnChange(default,default):system.Action2<sandbox.package.Facet,String>;
    @:protected function BuildRenderTree(__builder:microsoft.aspnetcore.components.rendering.RenderTreeBuilder):Void;
    @:protected function GetRenderTreeChecksum():String;
}
