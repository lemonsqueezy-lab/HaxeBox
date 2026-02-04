package sandbox.services.packagefacet;

@:native("Sandbox.Services.PackageFacet.Entry")
final extern class Entry {
    function new(Name:String, Title:String, Icon:String, Count:Int, Children:system.collections.generic.List<sandbox.services.packagefacet.Entry>):Void;
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

    var Icon(default,set):String;

    private inline function set_Icon(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Icon = {1}", this, __value);
    }

    var Count(default,set):Int;

    private inline function set_Count(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Count = {1}", this, __value);
    }

    var Children(default,set):system.collections.generic.List<sandbox.services.packagefacet.Entry>;

    private inline function set_Children(value:system.collections.generic.List<sandbox.services.packagefacet.Entry>):system.collections.generic.List<sandbox.services.packagefacet.Entry> {
        var __value:system.collections.generic.List<sandbox.services.packagefacet.Entry> = cast value;
        return untyped __cs__("{0}.Children = {1}", this, __value);
    }

    function Deconstruct(Name:String, Title:String, Icon:String, Count:Int, Children:system.collections.generic.List<sandbox.services.packagefacet.Entry>):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.services.packagefacet.Entry):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
