package sandbox;

/** Allows you to specify a string property as a resource type. This will give the property a resource finder. Type should be the file extension, ie "vmdl" */
@:native("Sandbox.ResourceTypeAttribute")
extern class ResourceTypeAttribute extends sandbox.FGDTypeAttribute {
    function new(type:String):Void;
}
