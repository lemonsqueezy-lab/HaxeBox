package sandbox;

/** Description of a Terrain Material. */
@:native("Sandbox.TerrainMaterial")
extern class TerrainMaterial extends sandbox.GameResource {
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
    @:protected function CreateAssetTypeIcon(width:Int, height:Int):sandbox.Bitmap;
    @:protected function PostLoad():Void;
    @:protected function PostReload():Void;
}
