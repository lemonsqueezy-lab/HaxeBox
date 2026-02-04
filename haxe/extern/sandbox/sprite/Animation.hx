package sandbox.sprite;

/** Contains one or multiple frames that can be played in sequence. */
@:native("Sandbox.Sprite.Animation")
extern class Animation {
    function new():Void;
    /** The name of the animation. Allows you to play specific animations by name. */
    var Name(default,default):String;
    /** The speed of the animation in frames per second. */
    var FrameRate(default,default):Single;
    /** The point at which the rendered sprite is anchored from. This means scaling/rotating a sprite will do so around the origin. */
    var Origin(default,default):Vector2;
    /** The loop mode of the animation. This determines what should happen when the animation reaches the final frame in playback. */
    var LoopMode(default,default):sandbox.sprite.LoopMode;
    /** A list of frames that make up the animation. Each frame is a texture that will be displayed in sequence. */
    var Frames(default,default):system.collections.generic.List<sandbox.sprite.Frame>;
    /** True if we have more than one frame */
    var IsAnimated(default,never):Bool;
}
