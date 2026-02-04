package sandbox;

/** Mark this property as a ranged float/int. In inspector we'll be able to create a slider instead of a text entry. */
@:native("Sandbox.RangeAttribute")
extern class RangeAttribute {
    overload function new(min:Single, max:Single):Void;
    overload function new(min:Single, max:Single, clamped:Bool, slider:Bool):Void;
    overload function new(min:Single, max:Single, step:Single, clamped:Bool, slider:Bool):Void;
    /** The minimum value of the range. */
    var Min(default,never):Single;
    /** The maximum value of the range. */
    var Max(default,never):Single;
    /** Whether or not a slider should be shown for this range. */
    var Slider(default,never):Bool;
    /** Whether or not the value should be clamped to the range. If false, the user can manually enter values outside the range if they wish. */
    var Clamped(default,never):Bool;
    var Step(default,never):Single;
    var TypeId(default,never):cs.system.Object;
}
