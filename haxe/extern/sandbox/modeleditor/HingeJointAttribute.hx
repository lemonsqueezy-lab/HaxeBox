package sandbox.modeleditor;

/** A helper that draws axis of rotation and angle limit of a hinge joint. */
@:native("Sandbox.ModelEditor.HingeJointAttribute")
extern class HingeJointAttribute extends sandbox.modeleditor.internal.BaseTransformAttribute {
    function new():Void;
    /** Key name that dictates whether the hinge limit is enabled or not. */
    var EnableLimit(default,default):String;
    /** Key name that stores the minimum angle value for the revolute joint. */
    var MinAngle(default,default):String;
    /** Key name that stores the maximum angle value for the revolute joint. */
    var MaxAngle(default,default):String;
    @:protected function AddKeys(dict:system.collections.generic.Dictionary<String,cs.system.Object>):Void;
}
