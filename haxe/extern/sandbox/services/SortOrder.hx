package sandbox.services;

@:native("Sandbox.Services.SortOrder")
final extern class SortOrder {
    function new(Name:String, Title:String, Icon:String):Void;
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

    function Deconstruct(Name:String, Title:String, Icon:String):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.services.SortOrder):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
