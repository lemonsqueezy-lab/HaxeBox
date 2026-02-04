package sandbox.modeleditor;

/** Draws 3 line axis visualization, which can set up to be manipulated via gizmos. You can have multiple of these. */
@:native("Sandbox.ModelEditor.AxisAttribute")
extern class AxisAttribute {
    function new():Void;
    /** Internal name of a boolean key that dictates whether this helper should draw or not. If unset, will draw always. */
    var Enabled(default,default):String;
    /** If set to true, when the node is selected a line will be drawn from the helper to the parent attachment/bone. */
    var ParentLine(default,default):Bool;
    /** Internal name of the key that dictates which bone to use as parent for position/angles. */
    var Bone(default,default):String;
    /** Internal name of the key that dictates which attachment to use as parent for position/angles. */
    var Attachment(default,default):String;
    /** Internal name of the key to store position in, if set, allows the helper to be moved. */
    var Origin(default,default):String;
    /** Internal name of the key to store angles in, allows the helper to be rotated. */
    var Angles(default,default):String;
    var TypeId(default,never):cs.system.Object;
    @:protected function AddKeys(dict:system.collections.generic.Dictionary<String,cs.system.Object>):Void;
}
