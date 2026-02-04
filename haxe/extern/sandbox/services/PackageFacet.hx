package sandbox.services;

@:native("Sandbox.Services.PackageFacet")
final extern class PackageFacet {
    var Name(default,set):String;

    private inline function set_Name(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Name = {1}", this, __value);
    }

    var Title(default,set):String;

    private inline function set_Title(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Title = {1}", this, __value);
    }

    var Entries(default,set):system.collections.generic.List<sandbox.services.packagefacet.Entry>;

    private inline function set_Entries(value:system.collections.generic.List<sandbox.services.packagefacet.Entry>):system.collections.generic.List<sandbox.services.packagefacet.Entry> {
        var __value:system.collections.generic.List<sandbox.services.packagefacet.Entry> = cast value;
        return untyped __cs__("{0}.Entries = {1}", this, __value);
    }

}
