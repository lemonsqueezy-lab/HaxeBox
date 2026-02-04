package sandbox;

/** Enables music playback. Use this for music, not for playing game sounds. */
@:native("Sandbox.MusicPlayer")
final extern class MusicPlayer {
    /** Sample rate of the audio being played. */
    var SampleRate(default,never):Int;
    /** Number of channels of the audio being played. */
    var Channels(default,never):Int;
    /** Gets the total duration of the video in seconds. */
    var Duration(default,never):Single;
    /** Gets the current playback time in seconds. */
    var PlaybackTime(default,never):Single;
    /** Invoked when the audio has finished playing. */
    var OnFinished(default,default):system.Action;
    /** Invoked when the audio has repeated. */
    var OnRepeated(default,default):system.Action;
    /** Place the listener at 0,0,0 facing 1,0,0. */
    var ListenLocal(default,default):Bool;
    /** Position of the sound. */
    var Position(default,default):Vector3;
    /** Pause playback of audio. */
    var Paused(default,default):Bool;
    /** Audio will repeat when reaching the end. */
    var Repeat(default,default):Bool;
    /** Change the volume of this music. */
    var Volume(default,default):Single;
    /** Enables lipsync processing. */
    var LipSync(default,default):Bool;
    /** Which mixer do we want to write to */
    var TargetMixer(default,default):sandbox.audio.Mixer;
    var Distance(default,default):Single;
    var Falloff(default,default):sandbox.Curve;
    /** A list of 15 lipsync viseme weights. Requires to be enabled. */
    var Visemes(default,never):system.collections.generic.IReadOnlyList<Single>;
    /** Get title of the track. */
    var Title(default,never):String;
    /** 512 FFT magnitudes used for audio visualization. */
    var Spectrum(default,never):system.ReadOnlySpan<Single>;
    /** Approximate measure of audio loudness. */
    var Amplitude(default,never):Single;
    function Dispose():Void;
    @:protected function Finalize():Void;
    /** Plays a music file from a relative path. */
    static function Play(filesystem:sandbox.BaseFileSystem, path:String):sandbox.MusicPlayer;
    /** Plays a music stream from a URL. */
    static function PlayUrl(url:String):sandbox.MusicPlayer;
    /** Sets the playback position to a specified time in the audio, given in seconds. */
    function Seek(time:Single):Void;
    /** Stops audio playback. */
    function Stop():Void;
}
