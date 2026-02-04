package sandbox;

/** When added to a string property, will becomes a selector for AssetTypeExtension */
@:native("Sandbox.AssetPathAttribute")
extern class AssetPathAttribute {
    var AssetTypeExtension(default,never):String;
    var TypeId(default,never):cs.system.Object;
}
