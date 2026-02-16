package sandbox;

/** Asset that owns a GPU render target texture which can be shared across runtime systems. */
@:native("Sandbox.RenderTextureAsset")
final extern class RenderTextureAsset extends sandbox.GameResource {
    function new():Void;
    var Texture(default,never):sandbox.Texture;
    /** Resolution of the render target in pixels. */
    var Size(default,default):Vector2Int;
    /** Color format used when building the render target. Unsupported formats fall back to RGBA8888. */
    var Format(default,default):sandbox.ImageFormat;
    /** Optional clear colour applied when the texture is (re)created. */
    var ClearColor(default,default):Color;
    @:protected function CreateAssetTypeIcon(width:Int, height:Int):sandbox.Bitmap;
    @:protected function OnDestroy():Void;
    @:protected function PostLoad():Void;
    @:protected function PostReload():Void;
}
