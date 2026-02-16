package sandbox;

/** Describes a property. We use this class to wrap and return PropertyInfo's that are safe to interact with. Returned by and . */
@:native("Sandbox.PropertyDescription")
final extern class PropertyDescription extends sandbox.MemberDescription {
    /** Whether this property can be written to. */
    var CanWrite(default,never):Bool;
    /** Whether this property can be read. */
    var CanRead(default,never):Bool;
    /** Whether the getter of this property is public. */
    var IsGetMethodPublic(default,never):Bool;
    /** Whether the setter of this property is public. */
    var IsSetMethodPublic(default,never):Bool;
    /** Property type. */
    var PropertyType(default,never):cs.system.Type;
    /** True if this property has index parameters */
    var IsIndexer(default,never):Bool;
    function CheckValidationAttributes(obj:cs.system.Object, errors:Array<String>, name:String):Bool;
    /** Get the value of this property on given object. */
    function GetValue(obj:cs.system.Object):cs.system.Object;
    /** Set the value of this property on given object. */
    function SetValue(obj:cs.system.Object, value:cs.system.Object):Void;
}
