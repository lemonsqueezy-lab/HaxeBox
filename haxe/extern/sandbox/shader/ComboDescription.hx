package sandbox.shader;

@:native("Sandbox.Shader.ComboDescription")
final extern class ComboDescription {
    var Name(default,set):String;

    private inline function set_Name(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Name = {1}", this, __value);
    }

    var Group(default,set):String;

    private inline function set_Group(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Group = {1}", this, __value);
    }

    var Min(default,set):Int;

    private inline function set_Min(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Min = {1}", this, __value);
    }

    var Max(default,set):Int;

    private inline function set_Max(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Max = {1}", this, __value);
    }

    var Index(default,set):Int;

    private inline function set_Index(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Index = {1}", this, __value);
    }

    var Values(default,set):Array<String>;

    private inline function set_Values(value:Array<String>):Array<String> {
        var __value:Array<String> = cast value;
        return untyped __cs__("{0}.Values = {1}", this, __value);
    }

}
