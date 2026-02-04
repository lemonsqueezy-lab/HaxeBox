package sandbox.licensing;

@:native("Sandbox.Licensing.LicenseDescription")
final extern class LicenseDescription {
    function new(type:sandbox.LicenseType, name:String, title:String, icon:String, description:String, url:String):Void;
    var type(default,set):sandbox.LicenseType;

    private inline function set_type(value:sandbox.LicenseType):sandbox.LicenseType {
        var __value:sandbox.LicenseType = cast value;
        return untyped __cs__("{0}.type = {1}", this, __value);
    }

    var name(default,set):String;

    private inline function set_name(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.name = {1}", this, __value);
    }

    var title(default,set):String;

    private inline function set_title(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.title = {1}", this, __value);
    }

    var icon(default,set):String;

    private inline function set_icon(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.icon = {1}", this, __value);
    }

    var description(default,set):String;

    private inline function set_description(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.description = {1}", this, __value);
    }

    var url(default,set):String;

    private inline function set_url(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.url = {1}", this, __value);
    }

    function Deconstruct(type:sandbox.LicenseType, name:String, title:String, icon:String, description:String, url:String):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.licensing.LicenseDescription):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
