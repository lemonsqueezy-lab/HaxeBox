package;

/** Tell the tools or gameui property editor which editor we should be using for this property or type. */
@:native("EditorAttribute")
extern class EditorAttribute {
    function new(editorName:String):Void;
    /** The editor to use. */
    var Value(default,never):String;
    var TypeId(default,never):cs.system.Object;
}
