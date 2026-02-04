package sandbox;

/** When added to a string property, will become a map string selector */
@:native("Sandbox.MapAssetPathAttribute")
extern class MapAssetPathAttribute {
    function new():Void;
    var AssetTypeExtension(default,never):String;
    var TypeId(default,never):cs.system.Object;
}
