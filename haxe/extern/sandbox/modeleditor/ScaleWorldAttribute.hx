package sandbox.modeleditor;

/** Scales the vector with the "ScaleAndMirror" node. */
@:native("Sandbox.ModelEditor.ScaleWorldAttribute")
extern class ScaleWorldAttribute extends editor.FieldMetaDataAttribute {
    function new():Void;
    function AddMetaData(meta_data:system.collections.generic.Dictionary<String,String>):Void;
}
