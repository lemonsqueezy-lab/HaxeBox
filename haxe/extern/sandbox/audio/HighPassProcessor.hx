package sandbox.audio;

/** Just a test - don't count on this sticking around */
@:native("Sandbox.Audio.HighPassProcessor")
final extern class HighPassProcessor {
    function new():Void;
    /** Cutoff frequency of the high-pass filter (0 to 1, where 1 is Nyquist frequency). */
    var Cutoff(default,default):Single;
    @:protected
    var CurrentState(null,never):sandbox.audio.highpassprocessor.State;
    /** Is this processor active? */
    var Enabled(default,default):Bool;
    /** Should we fade the influence of this processor in? */
    var Mix(default,default):Single;
    /** The listener's position in this frame. */
    @:protected
    var Listener(null,never):Transform;
    /** Processes each channel individually using a simple one-pole high-pass filter. */
    @:protected function ProcessSingleChannel(channel:sandbox.audio.AudioChannel, input:system.Span<Single>):Void;
}
