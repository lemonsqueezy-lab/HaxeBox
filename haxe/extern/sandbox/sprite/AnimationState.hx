package sandbox.sprite;

/** Contains the state of a sprite instance's animation playback. */
@:native("Sandbox.Sprite.AnimationState")
extern class AnimationState {
    function new():Void;
    /** Returns true if the animation finished, looped, or ping-ponged after calling */
    var JustFinished(default,never):Bool;
    var CurrentFrameIndex(default,default):Int;
    var IsPingPonging(default,default):Bool;
    var TimeSinceLastFrame(default,default):Single;
    var PlaybackSpeed(default,default):Single;
    /** Reset the animation playback state to the beginning (first frame, no ping-pong, zero time-since). */
    function ResetState():Void;
    /** Try to advance the frame of a given animation with a given delta time. Returns false if the frame did not advance. */
    function TryAdvanceFrame(animation:sandbox.sprite.Animation, deltaTime:Single):Bool;
}
