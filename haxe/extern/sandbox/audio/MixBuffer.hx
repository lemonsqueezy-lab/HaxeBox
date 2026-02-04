package sandbox.audio;

/** Contains 512 samples of audio data, this is used when mixing a single channel */
@:native("Sandbox.Audio.MixBuffer")
final extern class MixBuffer {
    function new():Void;
    var LevelMax(default,never):Single;
    var LevelAvg(default,never):Single;
    /** Set this buffer to this value */
    function CopyFrom(other:sandbox.audio.MixBuffer):Void;
    function Dispose():Void;
    @:protected function Finalize():Void;
    /** Mix this buffer with another */
    overload function MixFrom(other:sandbox.audio.MixBuffer, scale:Single):Void;
    overload function MixFrom(other:sandbox.audio.MultiChannelBuffer, scale:Single):Void;
    function RandomFill():Void;
    /** Scale the buffer by volume */
    function Scale(volume:Single):Void;
    /** Silence this buffer */
    function Silence():Void;
}
