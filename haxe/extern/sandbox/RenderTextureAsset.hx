package sandbox;

/** Asset that owns a GPU render target texture which can be shared across runtime systems. */
@:native("Sandbox.RenderTextureAsset")
final extern class RenderTextureAsset {
    function new():Void;
    var Texture(default,never):sandbox.Texture;
    /** Resolution of the render target in pixels. */
    var Size(default,default):Vector2Int;
    /** Color format used when building the render target. Unsupported formats fall back to RGBA8888. */
    var Format(default,default):sandbox.ImageFormat;
    /** Optional clear colour applied when the texture is (re)created. */
    var ClearColor(default,default):Color;
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
    @:protected function OnDestroy():Void;
    @:protected function PostLoad():Void;
    @:protected function PostReload():Void;
}
