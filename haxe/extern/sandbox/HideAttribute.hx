package sandbox;

/** Hide this in tools/editors. */
@:native("Sandbox.HideAttribute")
final extern class HideAttribute {
    function new():Void;
    /** The tags to add for this type or member. */
    var Value(default,never):Array<String>;
    var TypeId(default,never):cs.system.Object;
}
