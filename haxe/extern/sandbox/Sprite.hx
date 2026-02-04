package sandbox;

/** Represents a sprite resource that can be static or animated. Sprites are rendererd using the SpriteRenderer component. */
@:native("Sandbox.Sprite")
final extern class Sprite {
    function new():Void;
    /** A list of animations that can be played. Some animations can consist of multiple frames. If a sprite is static, it will only contain a single default animation. */
    var Animations(default,default):system.collections.generic.List<sandbox.sprite.Animation>;
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
    /** Returns a sprite with a single frame animation using the provided texture. */
    static function FromTexture(texture:sandbox.Texture):sandbox.Sprite;
    /** Returns a sprite with a single animation using the provided textures as frames. */
    static function FromTextures(textures:system.collections.generic.IEnumerable<sandbox.Texture>, frameRate:Single):sandbox.Sprite;
    /** Get an animation by its index. Returns null if out of bounds. */
    overload function GetAnimation(index:Int):sandbox.sprite.Animation;
    overload function GetAnimation(name:String):sandbox.sprite.Animation;
    /** Get the index of an animation by its name. Returns -1 if not found. */
    function GetAnimationIndex(name:String):Int;
}
