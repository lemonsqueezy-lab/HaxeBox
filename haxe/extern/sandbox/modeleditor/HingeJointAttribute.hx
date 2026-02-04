package sandbox.modeleditor;

/** A helper that draws axis of rotation and angle limit of a hinge joint. */
@:native("Sandbox.ModelEditor.HingeJointAttribute")
extern class HingeJointAttribute {
    function new():Void;
    /** Key name that dictates whether the hinge limit is enabled or not. */
    var EnableLimit(default,default):String;
    /** Key name that stores the minimum angle value for the revolute joint. */
    var MinAngle(default,default):String;
    /** Key name that stores the maximum angle value for the revolute joint. */
    var MaxAngle(default,default):String;
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
