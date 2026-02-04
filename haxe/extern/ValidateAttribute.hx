package;

/** Validates a property using a method. */
@:native("ValidateAttribute")
extern class ValidateAttribute {
    /** Specifies a method in the same class to use for validation. */
    overload function new(condition:String, message:String, status:sandbox.LogLevel):Void;
    /** Specifies a static method in another class to use for validation. */
    overload function new(type:cs.system.Type, condition:String, message:String, status:sandbox.LogLevel):Void;
    var TypeId(default,never):cs.system.Object;
    @:protected
    var _methodName(null,null):String;
    @:protected
    var _methodOwnerType(null,null):cs.system.Type;
    @:protected
    var _status(null,null):sandbox.LogLevel;
    @:protected
    var _message(null,null):String;
    /** Validates a property value using the specified method. */
    function Validate(targetObject:cs.system.Object, td:sandbox.TypeDescription, propertyValue:cs.system.Object):validateattribute.Result;
}
