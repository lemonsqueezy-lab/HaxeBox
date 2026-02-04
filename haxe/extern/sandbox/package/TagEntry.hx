package sandbox.package;

/** Represents a tag along with the count of items it contains */
@:native("Sandbox.Package.TagEntry")
final extern class TagEntry {
    /** Represents a tag along with the count of items it contains */
    function new(Name:String, Count:Int):Void;
    var Name(default,set):String;

    private inline function set_Name(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Name = {1}", this, __value);
    }

    var Count(default,set):Int;

    private inline function set_Count(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Count = {1}", this, __value);
    }

    function Deconstruct(Name:String, Count:Int):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.package.TagEntry):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
