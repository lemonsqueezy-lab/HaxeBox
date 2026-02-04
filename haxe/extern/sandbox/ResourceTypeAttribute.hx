package sandbox;

/** Allows you to specify a string property as a resource type. This will give the property a resource finder. Type should be the file extension, ie "vmdl" */
@:native("Sandbox.ResourceTypeAttribute")
extern class ResourceTypeAttribute {
    function new(type:String):Void;
    var AssetTypeExtension(default,never):String;
    var TypeId(default,never):cs.system.Object;
    var Type(default,default):String;
    var Editor(default,default):String;
}
