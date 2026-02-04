package sandbox.modeleditor.internal;

@:native("Sandbox.ModelEditor.Internal.BaseTransformAttribute")
extern class BaseTransformAttribute {
    function new(name:String):Void;
    /** Internal name of the key that dictates which bone to use as parent for position/angles. */
    var Bone(default,default):String;
    /** Internal name of the key that dictates which attachment to use as parent for position/angles. */
    var Attachment(default,default):String;
    /** Internal name of the key to store position in, if set, allows the helper to be moved. */
    var Origin(default,default):String;
    /** Internal name of the key to store angles in, allows the helper to be rotated. */
    var Angles(default,default):String;
    var TypeId(default,never):cs.system.Object;
    @:protected function AddTransform(sb:system.text.StringBuilder):Void;
}
