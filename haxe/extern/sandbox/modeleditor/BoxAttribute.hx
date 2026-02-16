package sandbox.modeleditor;

/** Draws a box, which can be manipulated via gizmos. You can have multiple of these. */
@:native("Sandbox.ModelEditor.BoxAttribute")
extern class BoxAttribute extends sandbox.modeleditor.internal.BaseTransformAttribute {
    /** Store the box's dimensions in a single key, acting as (maxs-mins) which assumes the box's center is at the models origin. The box's center can be set up to be movable via "Origin" property and rotatable via "Angles" property. */
    overload function new(dimensionsKey:String):Void;
    /** Store the box's dimensions in 2 keys as Mins and Maxs. This type cannot be rotated. */
    overload function new(minsKey:String, maxsKey:String):Void;
    /** If set, the semi-transparent box "walls" will not be drawn. */
    var HideSurface(default,default):Bool;
    /** If set, gizmos will be shown in transform mode to quickly move/scale the box. For "dimensions" box Origin/Angles must be set. */
    var ShowGizmos(default,default):Bool;
    @:protected function AddKeys(dict:system.collections.generic.Dictionary<String,cs.system.Object>):Void;
}
