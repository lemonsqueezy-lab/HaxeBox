package sandbox.modeleditor;

/** Draws a capsule, which can be manipulated via gizmos. You can have multiple of these. */
@:native("Sandbox.ModelEditor.CapsuleAttribute")
extern class CapsuleAttribute extends sandbox.modeleditor.internal.BaseTransformAttribute {
    /** This variation has 1 radius for both points. */
    overload function new(point1Key:String, point2key:String, radiusKey:String):Void;
    /** This variation has independent radius for each point. */
    overload function new(point1Key:String, point2key:String, radius1Key:String, radius2Key:String):Void;
    @:protected function AddKeys(dict:system.collections.generic.Dictionary<String,cs.system.Object>):Void;
}
