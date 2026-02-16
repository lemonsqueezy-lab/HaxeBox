package sandbox.modeleditor;

/** Draws 3 line axis visualization, which can set up to be manipulated via gizmos. You can have multiple of these. */
@:native("Sandbox.ModelEditor.AxisAttribute")
extern class AxisAttribute extends sandbox.modeleditor.internal.BaseTransformAttribute {
    function new():Void;
    /** Internal name of a boolean key that dictates whether this helper should draw or not. If unset, will draw always. */
    var Enabled(default,default):String;
    /** If set to true, when the node is selected a line will be drawn from the helper to the parent attachment/bone. */
    var ParentLine(default,default):Bool;
    @:protected function AddKeys(dict:system.collections.generic.Dictionary<String,cs.system.Object>):Void;
}
