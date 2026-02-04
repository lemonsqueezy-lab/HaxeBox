package sandbox.enumdescription;

@:native("Sandbox.EnumDescription.Entry")
final extern class Entry {
    var ObjectValue(default,set):cs.system.Object;

    private inline function set_ObjectValue(value:cs.system.Object):cs.system.Object {
        var __value:cs.system.Object = cast value;
        return untyped __cs__("{0}.ObjectValue = {1}", this, __value);
    }

    var IntegerValue(default,set):haxe.Int64;

    private inline function set_IntegerValue(value:haxe.Int64):haxe.Int64 {
        var __value:haxe.Int64 = cast value;
        return untyped __cs__("{0}.IntegerValue = {1}", this, __value);
    }

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

    var Group(default,set):String;

    private inline function set_Group(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Group = {1}", this, __value);
    }

    var Description(default,set):String;

    private inline function set_Description(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Description = {1}", this, __value);
    }

    var Browsable(default,set):Bool;

    private inline function set_Browsable(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.Browsable = {1}", this, __value);
    }

}
