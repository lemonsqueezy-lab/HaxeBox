package sandbox;

/** Tell the editor to try to display inline editing for this property, rather than hiding it behind a popup etc. */
@:native("Sandbox.InlineEditorAttribute")
extern class InlineEditorAttribute {
    function new():Void;
    var Label(default,default):Bool;
    var TypeId(default,never):cs.system.Object;
}
