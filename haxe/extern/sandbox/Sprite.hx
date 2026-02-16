package sandbox;

/** Represents a sprite resource that can be static or animated. Sprites are rendererd using the SpriteRenderer component. */
@:native("Sandbox.Sprite")
final extern class Sprite extends sandbox.GameResource {
    function new():Void;
    /** A list of animations that can be played. Some animations can consist of multiple frames. If a sprite is static, it will only contain a single default animation. */
    var Animations(default,default):system.collections.generic.List<sandbox.sprite.Animation>;
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
