package sandbox.resources.resourcecompiler;

/** Mark a ResourceCompiler. This is used to identify the compiler for a specific file extension, or compiler. */
@:native("Sandbox.Resources.ResourceCompiler.ResourceIdentityAttribute")
final extern class ResourceIdentityAttribute {
    function new(name:String):Void;
    var Name(default,default):String;
    var TypeId(default,never):cs.system.Object;
}
