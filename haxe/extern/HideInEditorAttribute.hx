package;

/** Hide this in tools/editors. */
@:native("HideInEditorAttribute")
final extern class HideInEditorAttribute {
    function new():Void;
    /** The tags to add for this type or member. */
    var Value(default,never):Array<String>;
    var TypeId(default,never):cs.system.Object;
}
