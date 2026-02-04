package sandbox.internal;

/** Automatically added to codegenerated classes to let them determine their location This helps when looking for resources relative to them, like style sheets. Replaced in Sept 2023 by SourceLocationAttribute, which is added to classes and members. */
@:native("Sandbox.Internal.ClassFileLocationAttribute")
extern class ClassFileLocationAttribute {
    function new(value:String):Void;
    var Path(default,default):String;
    var TypeId(default,never):cs.system.Object;
}
