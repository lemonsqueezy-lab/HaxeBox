package sandbox;

/** When added to a string property, will becomes a selector for AssetTypeExtension */
@:native("Sandbox.AssetPathAttribute")
extern class AssetPathAttribute extends system.Attribute {
    @:protected function new():Void;
    var AssetTypeExtension(default,never):String;
}
