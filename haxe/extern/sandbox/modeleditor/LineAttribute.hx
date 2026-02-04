package sandbox.modeleditor;

@:native("Sandbox.ModelEditor.LineAttribute")
extern class LineAttribute {
    function new():Void;
    /** Internal name of the key that dictates which bone to use as parent for start position. */
    var BoneFrom(default,default):String;
    /** Internal name of the key that dictates which attachment to use as parent for start position. */
    var AttachmentFrom(default,default):String;
    /** Internal name of the key to read line start position from. */
    var OriginFrom(default,default):String;
    /** Internal name of the key that dictates which bone to use as parent for end position. */
    var BoneTo(default,default):String;
    /** Internal name of the key that dictates which attachment to use as parent for end position. */
    var AttachmentTo(default,default):String;
    /** Internal name of the key to read line end position from. */
    var OriginTo(default,default):String;
    /** Internal name of the key that controls whether this helper is visible or not. */
    var Enabled(default,default):String;
    /** A string formatted color for this helper. Format is "255 255 255" */
    var Color(default,default):String;
    /** The width of the line helper */
    var Width(default,default):Single;
    var TypeId(default,never):cs.system.Object;
    @:protected function AddKeys(dict:system.collections.generic.Dictionary<String,cs.system.Object>):Void;
    @:protected function AddTransform(sb:system.text.StringBuilder):Void;
}
