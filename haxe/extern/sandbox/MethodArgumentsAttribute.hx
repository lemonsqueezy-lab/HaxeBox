package sandbox;

/** Specify the types of arguments a method should have. Typically used with event attributes to throw an exception if an event attribute is added to a method with incorrect arguments. */
@:native("Sandbox.MethodArgumentsAttribute")
extern class MethodArgumentsAttribute {
    function new(argumentTypes:Array<cs.system.Type>):Void;
    var ArgumentTypes(default,default):Array<cs.system.Type>;
    var TypeId(default,never):cs.system.Object;
}
