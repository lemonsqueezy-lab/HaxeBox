package sandbox.package;

/** A binary category used to divide into two categories. For example, Work In Progress. */
@:native("Sandbox.Package.PackageProperty")
final extern class PackageProperty {
    /** A binary category used to divide into two categories. For example, Work In Progress. */
    function new(Name:String, Icon:String, Title:String, Description:String, Count:Int, IsExclusive:Bool):Void;
    var Name(default,set):String;

    private inline function set_Name(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Name = {1}", this, __value);
    }

    var Icon(default,set):String;

    private inline function set_Icon(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Icon = {1}", this, __value);
    }

    var Title(default,set):String;

    private inline function set_Title(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Title = {1}", this, __value);
    }

    var Description(default,set):String;

    private inline function set_Description(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Description = {1}", this, __value);
    }

    var Count(default,set):Int;

    private inline function set_Count(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Count = {1}", this, __value);
    }

    var IsExclusive(default,set):Bool;

    private inline function set_IsExclusive(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.IsExclusive = {1}", this, __value);
    }

    function Deconstruct(Name:String, Icon:String, Title:String, Description:String, Count:Int, IsExclusive:Bool):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.package.PackageProperty):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
