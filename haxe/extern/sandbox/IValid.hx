package sandbox;

/** Interface for objects that can become invalid over time, such as references to deleted game objects or disposed resources. */
@:native("Sandbox.IValid")
extern class IValid {
    /** Returns true if this object is still valid and can be safely accessed. When false, accessing the object's properties or methods may throw exceptions. */
    var IsValid(default,never):Bool;
}
