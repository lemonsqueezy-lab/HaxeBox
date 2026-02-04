package sandbox;

/** When added to a string property, will become an image string selector */
@:native("Sandbox.ImageAssetPathAttribute")
extern class ImageAssetPathAttribute {
    function new():Void;
    var AssetTypeExtension(default,never):String;
    var TypeId(default,never):cs.system.Object;
}
