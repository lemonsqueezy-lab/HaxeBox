package;

/** Visual order of this member for UI purposes. This info can then be retrieved via DisplayInfo library. */
@:native("OrderAttribute")
final extern class OrderAttribute extends system.Attribute {
    function new(value:Int):Void;
    /** The visual order. */
    var Value(default,default):Int;
}
