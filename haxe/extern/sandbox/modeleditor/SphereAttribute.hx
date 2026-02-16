package sandbox.modeleditor;

/** Draws a sphere, which can be manipulated via gizmos. You can have multiple of these. */
@:native("Sandbox.ModelEditor.SphereAttribute")
extern class SphereAttribute extends sandbox.modeleditor.internal.BaseTransformAttribute {
    function new(radiusKey:String, centerKey:String):Void;
    /** If set, the semi-transparent sphere "wall"/surface will not be drawn. */
    var HideSurface(default,default):Bool;
    @:protected function AddKeys(dict:system.collections.generic.Dictionary<String,cs.system.Object>):Void;
}
