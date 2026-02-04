package sandbox.services.stats;

@:native("Sandbox.Services.Stats.GlobalStat")
final extern class GlobalStat {
    /** The programatic name for this stat. This should probably be called Ident */
    var Name(default,set):String;

    private inline function set_Name(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Name = {1}", this, __value);
    }

    /** The title of this stat, as defined on the backend */
    var Title(default,set):String;

    private inline function set_Title(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Title = {1}", this, __value);
    }

    /** The description of this stat, as defined on the backend */
    var Description(default,set):String;

    private inline function set_Description(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Description = {1}", this, __value);
    }

    /** The unit of this stat as defined on the backend */
    var Unit(default,set):String;

    private inline function set_Unit(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Unit = {1}", this, __value);
    }

    /** The change in this stat in units per hour */
    var Velocity(default,set):Float;

    private inline function set_Velocity(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.Velocity = {1}", this, __value);
    }

    /** The current stat value */
    var Value(default,set):Float;

    private inline function set_Value(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.Value = {1}", this, __value);
    }

    /** The current value formatted using Unit */
    var ValueString(default,set):String;

    private inline function set_ValueString(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.ValueString = {1}", this, __value);
    }

    /** The amount of players that have this stat */
    var Players(default,set):haxe.Int64;

    private inline function set_Players(value:haxe.Int64):haxe.Int64 {
        var __value:haxe.Int64 = cast value;
        return untyped __cs__("{0}.Players = {1}", this, __value);
    }

    /** The maximum value */
    var Max(default,set):Float;

    private inline function set_Max(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.Max = {1}", this, __value);
    }

    /** The minimum value */
    var Min(default,set):Float;

    private inline function set_Min(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.Min = {1}", this, __value);
    }

    /** The average value */
    var Avg(default,set):Float;

    private inline function set_Avg(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.Avg = {1}", this, __value);
    }

    /** The sum of all values */
    var Sum(default,set):Float;

    private inline function set_Sum(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.Sum = {1}", this, __value);
    }

}
