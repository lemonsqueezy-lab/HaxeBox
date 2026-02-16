package sandbox.ui;

@:native("Sandbox.UI.PackageCard")
extern class PackageCard extends sandbox.ui.Panel {
    function new():Void;
    var Package(default,default):sandbox.Package;
    var OnLaunch(default,default):system.Action;
    var OnMenu(default,default):system.Action;
    var Decorated(default,default):Bool;
    var UsersNow(default,default):Int;
    @:protected function BuildHash():Int;
    @:protected function BuildRenderTree(__builder:microsoft.aspnetcore.components.rendering.RenderTreeBuilder):Void;
    function FormatHoursPlayed():String;
    @:protected function GetRenderTreeChecksum():String;
    function UpdateFaves(ident:String, value:haxe.Int64):Void;
    function UpdateUsers(ident:String, value:haxe.Int64):Void;
    function UpdatedString():String;
}
