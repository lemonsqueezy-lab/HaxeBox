package sandbox;

/** When applied to an attribute, which is then applied to a type.. This will make set on the attribute upon load. This provides a convenient way to know which type the attribute was attached to. */
@:native("Sandbox.ITypeAttribute")
extern class ITypeAttribute {
    /** The type this attribute was attached to. */
    var TargetType(default,default):cs.system.Type;
    /** Called when a class with this attribute is registered via the TypeLibrary. */
    function TypeRegister():Void;
    /** Called when a class with this attribute is unregistered via the TypeLibrary. */
    function TypeUnregister():Void;
}
