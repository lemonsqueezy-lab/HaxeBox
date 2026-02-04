package sandbox;

/** When applied to a member with or type, don't warn if the key of an item becomes null during a hotload because a type is removed. You should only use this attribute if you're sure that it's safe to quietly remove entries. */
@:native("Sandbox.SuppressNullKeyWarningAttribute")
final extern class SuppressNullKeyWarningAttribute {
    function new():Void;
    var TypeId(default,never):cs.system.Object;
}
