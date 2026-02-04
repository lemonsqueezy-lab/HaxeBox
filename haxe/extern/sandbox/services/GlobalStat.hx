package sandbox.services;

@:native("Sandbox.Services.GlobalStat")
final extern class GlobalStat {
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

    var Unit(default,set):String;

    private inline function set_Unit(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Unit = {1}", this, __value);
    }

    var Velocity(default,set):Float;

    private inline function set_Velocity(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.Velocity = {1}", this, __value);
    }

    var Value(default,set):Float;

    private inline function set_Value(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.Value = {1}", this, __value);
    }

    var ValueString(default,set):String;

    private inline function set_ValueString(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.ValueString = {1}", this, __value);
    }

    var Players(default,set):Int;

    private inline function set_Players(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Players = {1}", this, __value);
    }

    var Max(default,set):Float;

    private inline function set_Max(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.Max = {1}", this, __value);
    }

    var Avg(default,set):Float;

    private inline function set_Avg(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.Avg = {1}", this, __value);
    }

    var Min(default,set):Float;

    private inline function set_Min(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.Min = {1}", this, __value);
    }

    var Sum(default,set):Float;

    private inline function set_Sum(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.Sum = {1}", this, __value);
    }

}
