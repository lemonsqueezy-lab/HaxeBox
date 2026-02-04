package sandbox.modeleditor;

/** Scales the vector with the "ScaleAndMirror" node, relative to associated bone. */
@:native("Sandbox.ModelEditor.ScaleBoneRelativeAttribute")
extern class ScaleBoneRelativeAttribute {
    function new():Void;
    var TypeId(default,never):cs.system.Object;
    function AddMetaData(meta_data:system.collections.generic.Dictionary<String,String>):Void;
}
