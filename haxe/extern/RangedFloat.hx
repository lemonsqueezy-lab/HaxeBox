package;

/** A float between two values, which can be randomized or fixed. */
@:native("RangedFloat")
final extern class RangedFloat {
    /** Initialize the float as a fixed value. */
    overload function new(fixedValue:Single):Void;
    /** Initialize the float as a random value between given min and max. */
    overload function new(min:Single, max:Single):Void;
    /** The minimum value of the float range. */
    var Min(default,set):Single;

    private inline function set_Min(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Min = {1}", this, __value);
    }

    /** The maximum value of the float range. For , this will be the same as . */
    var Max(default,set):Single;

    private inline function set_Max(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Max = {1}", this, __value);
    }

    /** The fixed value. Setting this will convert us to a fixed value */
    var FixedValue(default,set):Single;

    private inline function set_FixedValue(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.FixedValue = {1}", this, __value);
    }

    /** The range value. Setting this will convert us to a range value */
    var RangeValue(default,set):Vector2;

    private inline function set_RangeValue(value:Vector2):Vector2 {
        var __value:Vector2 = cast value;
        return untyped __cs__("{0}.RangeValue = {1}", this, __value);
    }

    /** Range type of this float. */
    var Range(default,set):rangedfloat.RangeType;

    private inline function set_Range(value:rangedfloat.RangeType):rangedfloat.RangeType {
        var __value:rangedfloat.RangeType = cast value;
        return untyped __cs__("{0}.Range = {1}", this, __value);
    }

    var x(default,set):Single;

    private inline function set_x(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.x = {1}", this, __value);
    }

    var y(default,set):Single;

    private inline function set_y(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.y = {1}", this, __value);
    }

    function Deconstruct(min:Single, max:Single):Void;
    /** Returns the final value of this ranged float, randomizing between min and max values. */
    function GetValue():Single;
    /** Parse a ranged float from a string. Format is "min[ max]". */
    static function Parse(str:String):RangedFloat;
    /** Returns a string representation of this range, that can be passed to to re-create this range. Format is "min[ max]". */
    function ToString():String;
}
