package sandbox.modeleditor;

/** Scales the vector with the "ScaleAndMirror" node, relative to associated bone. */
@:native("Sandbox.ModelEditor.ScaleBoneRelativeAttribute")
extern class ScaleBoneRelativeAttribute extends editor.FieldMetaDataAttribute {
    function new():Void;
    function AddMetaData(meta_data:system.collections.generic.Dictionary<String,String>):Void;
}
