package sandbox;

/** When applied to a Type property, allows you to specify a Type that the property's value must derive from. */
@:native("Sandbox.TargetTypeAttribute")
final extern class TargetTypeAttribute {
    function new(type:cs.system.Type):Void;
    /** The type that the property's value must derive from. */
    var Type(default,default):cs.system.Type;
    var TypeId(default,never):cs.system.Object;
}
