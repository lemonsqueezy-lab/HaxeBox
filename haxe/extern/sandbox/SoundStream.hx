package sandbox;

@:native("Sandbox.SoundStream")
final extern class SoundStream {
    function new(sampleRate:Int, channels:Int):Void;
    /** Number of samples per second, as set during its creation. */
    var SampleRate(default,never):Int;
    /** Number of audio channels, as set during its creation. */
    var Channels(default,never):Int;
    var QueuedSampleCount(default,never):Int;
    var MaxWriteSampleCount(default,never):Int;
    var LatencySamplesCount(default,never):Int;
    function Dispose():Void;
    @:protected function Finalize():Void;
    /** Play sound of the stream. */
    overload function Play(volume:Single, pitch:Single):sandbox.SoundHandle;
    overload function Play(volume:Single, pitch:Single, decibels:Single):sandbox.SoundHandle;
    function WriteData(data:system.Span<Int>):Void;
}
