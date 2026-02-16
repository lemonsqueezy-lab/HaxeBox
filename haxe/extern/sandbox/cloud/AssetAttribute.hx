package sandbox.cloud;

/** Automatically addeded to a type as a result of using Cloud.Model etc inside. */
@:native("Sandbox.Cloud.AssetAttribute")
final extern class AssetAttribute extends system.Attribute {
    function new(packageIdent:String, assetPath:String):Void;
    var PackageIdent(default,never):String;
    var AssetPath(default,never):String;
}
