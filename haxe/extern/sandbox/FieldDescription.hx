package sandbox;

/** Describes a field. We use this class to wrap and return FieldInfo's that are safe to interact with. Returned by and . */
@:native("Sandbox.FieldDescription")
final extern class FieldDescription extends sandbox.MemberDescription {
    var IsInitOnly(default,never):Bool;
    /** Property type. */
    var FieldType(default,never):cs.system.Type;
    /** Get the value of this property on given object. */
    function GetValue(obj:cs.system.Object):cs.system.Object;
    /** Set the value of this property on given object. */
    function SetValue(obj:cs.system.Object, value:cs.system.Object):Void;
}
