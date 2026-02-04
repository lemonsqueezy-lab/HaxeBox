package sandbox;

/** Enables video playback and access to the video texture and audio. */
@:native("Sandbox.VideoPlayer")
final extern class VideoPlayer {
    function new():Void;
    /** Video successfully loaded. */
    var OnLoaded(default,default):system.Action;
    /** Event that is invoked when the audio stream is created and ready to use. */
    var OnAudioReady(default,default):system.Action;
    /** Video finished playing. */
    var OnFinished(default,default):system.Action;
    /** Video started playing again after looping. */
    var OnRepeated(default,default):system.Action;
    /** If this event is set, texture data will be provided instead of rendering to the texture. */
    var OnTextureData(default,default):sandbox.videoplayer.TextureChangedDelegate;
    /** Sets whether the video should loop when it reaches the end. */
    var Repeat(default,default):Bool;
    /** Gets the total duration of the video in seconds. */
    var Duration(default,never):Single;
    /** Gets the current playback time in seconds. */
    var PlaybackTime(default,never):Single;
    /** Audio sample rate. */
    var SampleRate(default,never):Int;
    /** Number of audio channels. */
    var Channels(default,never):Int;
    /** Does the loaded video have audio? */
    var HasAudio(default,never):Bool;
    /** Has the video been paused? */
    var IsPaused(default,never):Bool;
    /** Texture of the video frame. */
    var Texture(default,never):sandbox.Texture;
    /** Width of the video. */
    var Width(default,never):Int;
    /** Height of the video. */
    var Height(default,never):Int;
    /** Access audio properties for this video playback. */
    var Audio(default,never):sandbox.videoplayer.AudioAccessor;
    /** The video is muted */
    var Muted(default,default):Bool;
    function Dispose():Void;
    @:protected function Finalize():Void;
    /** Pauses video playback. */
    function Pause():Void;
    /** Plays a video file from a URL. If there's already a video playing, it will stop. */
    overload function Play(url:String):Void;
    overload function Play(filesystem:sandbox.BaseFileSystem, path:String):Void;
    /** Present a video frame. */
    function Present():Void;
    /** Resumes video playback. */
    function Resume():Void;
    /** Sets the playback position to a specified time in the video, given in seconds. */
    function Seek(time:Single):Void;
    /** Stops video playback. */
    function Stop():Void;
    /** Toggle video playback */
    function TogglePause():Void;
}
