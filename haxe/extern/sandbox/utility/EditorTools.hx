package sandbox.utility;

/** Functions to interact with the tools system. Does nothing if tools aren't enabled. */
@:native("Sandbox.Utility.EditorTools")
final extern class EditorTools {
    /** Set the object to be inspected by the inspector in the editor */
    static var InspectorObject(default,default):cs.system.Object;
}
