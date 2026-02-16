package sandbox;

/** Tell the editor to try to display inline editing for this property, rather than hiding it behind a popup etc. */
@:native("Sandbox.InlineEditorAttribute")
extern class InlineEditorAttribute extends system.Attribute {
    function new():Void;
    var Label(default,default):Bool;
}
