package;

/** Visual order of this member for UI purposes. This info can then be retrieved via DisplayInfo library. */
@:native("OrderAttribute")
final extern class OrderAttribute {
    function new(value:Int):Void;
    /** The visual order. */
    var Value(default,default):Int;
    var TypeId(default,never):cs.system.Object;
}
