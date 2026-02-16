package sandbox;

/** A sound resource. */
@:native("Sandbox.SoundFile")
extern class SoundFile extends sandbox.Resource {
    /** Ran when the file is reloaded/recompiled, etc. */
    var OnSoundReloaded(default,default):system.Action;
    /** true if sound is loaded */
    var IsLoaded(default,never):Bool;
    /** Format of the audio file. */
    var Format(default,never):sandbox.SoundFormat;
    /** Bits per each sample of this sound file. */
    var BitsPerSample(default,never):Int;
    /** Number of channels this audio file has. */
    var Channels(default,never):Int;
    /** Bytes per each sample of this sound file. */
    var BytesPerSample(default,never):Int;
    /** Size of one sample, typically this would be "sample size * channel count", but can vary on audio format. */
    var SampleFrameSize(default,never):Int;
    /** Sample rate of this sound file, per second. */
    var Rate(default,never):Int;
    /** Duration of the sound this sound file contains, in seconds. */
    var Duration(default,never):Single;
    var IsValidForPlayback(default,never):Bool;
    @:protected function Finalize():Void;
    /** Load from WAV. */
    static function FromWav(filename:String, data:system.Span<Int>, loop:Bool):sandbox.SoundFile;
    /** Request decompressed audio samples. */
    function GetSamplesAsync():system.threading.tasks.Task1<Array<Int>>;
    /** Load a new sound from disk. Includes automatic caching. */
    static function Load(filename:String):sandbox.SoundFile;
    function LoadAsync():system.threading.tasks.Task1<Bool>;
    function Preload():Void;
}
