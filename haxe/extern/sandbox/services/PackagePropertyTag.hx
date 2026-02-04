package sandbox.services;

@:native("Sandbox.Services.PackagePropertyTag")
final extern class PackagePropertyTag {
    var Icon(default,set):String;

    private inline function set_Icon(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Icon = {1}", this, __value);
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

    var Exclusive(default,set):Bool;

    private inline function set_Exclusive(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.Exclusive = {1}", this, __value);
    }

}
