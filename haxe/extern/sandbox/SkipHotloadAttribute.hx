package sandbox;

/** Skip processing a specific field, or any fields in a type marked by this attribute. Field processing will still occur if a type marked by this attribute was defined in a swapped assembly. */
@:native("Sandbox.SkipHotloadAttribute")
final extern class SkipHotloadAttribute {
    function new():Void;
    var TypeId(default,never):cs.system.Object;
}
