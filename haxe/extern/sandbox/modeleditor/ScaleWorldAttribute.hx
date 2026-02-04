package sandbox.modeleditor;

/** Scales the vector with the "ScaleAndMirror" node. */
@:native("Sandbox.ModelEditor.ScaleWorldAttribute")
extern class ScaleWorldAttribute {
    function new():Void;
    var TypeId(default,never):cs.system.Object;
    function AddMetaData(meta_data:system.collections.generic.Dictionary<String,String>):Void;
}
