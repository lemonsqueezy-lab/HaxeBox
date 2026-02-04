package sandbox;

/** An attribute that can be added to a custom class for special code generation behavior. They'll then be applied to methods and properties when they are decorated with that attribute. */
@:native("Sandbox.CodeGeneratorAttribute")
extern class CodeGeneratorAttribute {
    /** Perform code generation for a method or property. */
    function new(type:sandbox.CodeGeneratorFlags, callbackName:String, priority:Int):Void;
    /** Attributes with a higher priority will wrap the target first. The default priority is 0. */
    var Priority(default,default):Int;
    /** The name of the callback method. This can be a fully qualified static method callback or a simple callback to invoke on the target object if the method or property target is not static. */
    var CallbackName(default,default):String;
    /** The type of code generation you want to do. You will need to specify whether it should apply to instance or static methods and properties using the and flags. */
    var Type(default,default):sandbox.CodeGeneratorFlags;
    var TypeId(default,never):cs.system.Object;
}
