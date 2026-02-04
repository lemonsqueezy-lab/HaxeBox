package sandbox;

/** Should be applied to a class that inherits from . Makes the class able to be stored as an asset on disk. */
@:native("Sandbox.AssetTypeAttribute")
extern class AssetTypeAttribute {
    function new():Void;
    /** This gets filled in by the TypeLibrary when the class is registered, it shouldn't be changed manually. */
    var TargetType(default,default):cs.system.Type;
    /** The title of this game resource. */
    var Name(default,default):String;
    /** File extension for this game resource. */
    var Extension(default,default):String;
    /** Category of this game resource, for grouping in UI. */
    var Category(default,default):String;
    /** Flags for this asset type. */
    var Flags(default,default):sandbox.AssetTypeFlags;
    var TypeId(default,never):cs.system.Object;
    /** Find a resource type by its extension. The extension should have no period. */
    static function FindTypeByExtension(extension:String):sandbox.TypeDescription;
}
