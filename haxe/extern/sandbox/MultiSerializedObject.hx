package sandbox;

/** An object (or data) that can be accessed as an object */
@:native("Sandbox.MultiSerializedObject")
extern class MultiSerializedObject extends sandbox.SerializedObject {
    function new():Void;
    /** Add an object. Don't forget to rebuild after editing! */
    function Add(obj:sandbox.SerializedObject):Void;
    /** Rebuild the object after modifying. This updates PropertyList. */
    function Rebuild():Void;
}
