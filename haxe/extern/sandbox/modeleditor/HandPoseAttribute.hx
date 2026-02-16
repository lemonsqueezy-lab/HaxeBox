package sandbox.modeleditor;

/** A helper used for VR hand purposes. */
@:native("Sandbox.ModelEditor.HandPoseAttribute")
extern class HandPoseAttribute extends sandbox.modeleditor.internal.BaseModelDocAttribute {
    function new(originKey:String, anglesKey:String, model:String, isRightHand:Bool):Void;
    /** Text label this helper will have when hovered/selected. */
    var Label(default,default):String;
    /** Internal name of the key that controls whether this helper is visible or not. */
    var Enabled(default,default):String;
    @:protected function AddKeys(dict:system.collections.generic.Dictionary<String,cs.system.Object>):Void;
}
