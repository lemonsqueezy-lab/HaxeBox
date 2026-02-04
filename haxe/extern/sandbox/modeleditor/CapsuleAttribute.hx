package sandbox.modeleditor;

/** Draws a capsule, which can be manipulated via gizmos. You can have multiple of these. */
@:native("Sandbox.ModelEditor.CapsuleAttribute")
extern class CapsuleAttribute {
    /** This variation has 1 radius for both points. */
    overload function new(point1Key:String, point2key:String, radiusKey:String):Void;
    /** This variation has independent radius for each point. */
    overload function new(point1Key:String, point2key:String, radius1Key:String, radius2Key:String):Void;
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
