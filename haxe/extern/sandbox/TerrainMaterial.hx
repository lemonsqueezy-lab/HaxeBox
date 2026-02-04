package sandbox;

/** Description of a Terrain Material. */
@:native("Sandbox.TerrainMaterial")
extern class TerrainMaterial {
    function new():Void;
    var AlbedoImage(default,default):String;
    var RoughnessImage(default,default):String;
    var NormalImage(default,default):String;
    var HeightImage(default,default):String;
    var AOImage(default,default):String;
    var BCRTexture(default,never):sandbox.Texture;
    var NHOTexture(default,never):sandbox.Texture;
    var UVScale(default,default):Single;
    var Metalness(default,default):Single;
    var NormalStrength(default,default):Single;
    var HeightBlendStrength(default,default):Single;
    var HasHeightTexture(default,never):Bool;
    var DisplacementScale(default,default):Single;
    var NoTiling(default,default):Bool;
    var Flags(default,never):sandbox.TerrainFlags;
    var Surface(default,default):sandbox.Surface;
    /** True if this resource has changed but the changes aren't written to disk */
    var HasUnsavedChanges(default,never):Bool;
    /** Target type used for any action graphs contained in this resource. Defaults to this resource's type. */
    @:protected
    var ActionGraphTargetType(null,never):cs.system.Type;
    /** Target instance used for any action graphs contained in this resource. Defaults to this resource itself. */
    @:protected
    var ActionGraphTarget(null,never):cs.system.Object;
    /** The version of the component. Used by . */
    var ResourceVersion(default,never):Int;
    var IsValid(default,never):Bool;
    /** ID of this resource, */
    @:protected
    var ResourceId(default,null):Int;
    /** Path to this resource. */
    @:protected
    var ResourcePath(default,null):String;
    /** File name of the resource without the extension. */
    @:protected
    var ResourceName(default,null):String;
    /** Embedded data for this resource */
    var EmbeddedResource(default,default):Null<sandbox.resources.EmbeddedResource>;
    @:protected function CreateAssetTypeIcon(width:Int, height:Int):sandbox.Bitmap;
    @:protected function PostLoad():Void;
    @:protected function PostReload():Void;
}
