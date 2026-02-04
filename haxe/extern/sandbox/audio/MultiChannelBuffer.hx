package sandbox.audio;

/** Holds up to 8 mix buffers, which usually represent output speakers. */
@:native("Sandbox.Audio.MultiChannelBuffer")
final extern class MultiChannelBuffer {
    function new(channelCount:Int):Void;
    /** How many channels do we have */
    var ChannelCount(default,never):Int;
    /** Set this buffer to this value */
    function CopyFrom(other:sandbox.audio.MultiChannelBuffer):Void;
    /** Copies from one buffer to the other. If the other has less channels, we'll upmix */
    function CopyFromUpmix(other:sandbox.audio.MultiChannelBuffer):Void;
    /** Delete and release all resources. Cannot be used again. */
    function Dispose():Void;
    @:protected function Finalize():Void;
    /** Get MixBuffer number i */
    overload function Get(i:Int):sandbox.audio.MixBuffer;
    overload function Get(i:sandbox.audio.AudioChannel):sandbox.audio.MixBuffer;
    /** Mix the target buffer into this buffer */
    function MixFrom(samples:sandbox.audio.MultiChannelBuffer, mix:Single):Void;
    /** Scale volume of this buffer */
    function Scale(volume:Single):Void;
    /** Silence all buffers */
    function Silence():Void;
}
