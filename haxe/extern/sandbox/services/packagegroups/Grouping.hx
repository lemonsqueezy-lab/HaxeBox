package sandbox.services.packagegroups;

@:native("Sandbox.Services.PackageGroups.Grouping")
final extern class Grouping {
    var Id(default,set):system.Guid;

    private inline function set_Id(value:system.Guid):system.Guid {
        var __value:system.Guid = cast value;
        return untyped __cs__("{0}.Id = {1}", this, __value);
    }

    var Title(default,set):String;

    private inline function set_Title(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Title = {1}", this, __value);
    }

    var Style(default,set):String;

    private inline function set_Style(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Style = {1}", this, __value);
    }

    var Icon(default,set):String;

    private inline function set_Icon(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Icon = {1}", this, __value);
    }

    var QueryString(default,set):String;

    private inline function set_QueryString(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.QueryString = {1}", this, __value);
    }

    var Packages(default,set):system.collections.generic.List<sandbox.services.PackageWrapMinimal>;

    private inline function set_Packages(value:system.collections.generic.List<sandbox.services.PackageWrapMinimal>):system.collections.generic.List<sandbox.services.PackageWrapMinimal> {
        var __value:system.collections.generic.List<sandbox.services.PackageWrapMinimal> = cast value;
        return untyped __cs__("{0}.Packages = {1}", this, __value);
    }

}
