package sandbox.services;

@:native("Sandbox.Services.ManifestFile")
final extern class ManifestFile {
    function new(Name:String, Size:Int, Hash:String):Void;
    var Name(default,set):String;

    private inline function set_Name(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Name = {1}", this, __value);
    }

    var Size(default,set):Int;

    private inline function set_Size(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Size = {1}", this, __value);
    }

    var Hash(default,set):String;

    private inline function set_Hash(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Hash = {1}", this, __value);
    }

    function Deconstruct(Name:String, Size:Int, Hash:String):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.services.ManifestFile):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
