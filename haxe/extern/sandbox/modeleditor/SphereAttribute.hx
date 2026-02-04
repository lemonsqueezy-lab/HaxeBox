package sandbox.modeleditor;

/** Draws a sphere, which can be manipulated via gizmos. You can have multiple of these. */
@:native("Sandbox.ModelEditor.SphereAttribute")
extern class SphereAttribute {
    function new(radiusKey:String, centerKey:String):Void;
    /** If set, the semi-transparent sphere "wall"/surface will not be drawn. */
    var HideSurface(default,default):Bool;
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
