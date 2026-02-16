package;

/** Mark property as having a minimum and maximum value. */
@:native("MinMaxAttribute")
extern class MinMaxAttribute extends system.Attribute {
    function new(min:Single, max:Single):Void;
    /** The minimum value for this property. */
    var MinValue(default,default):Single;
    /** The maximum value for this property. */
    var MaxValue(default,default):Single;
}
