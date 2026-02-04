package sandbox.audio;

/** Just a test - don't count on this sticking around */
@:native("Sandbox.Audio.LowPassProcessor")
final extern class LowPassProcessor {
    function new():Void;
    /** Cutoff frequency for the low-pass filter (normalized 0 to 1). */
    var Cutoff(default,default):Single;
    @:protected
    var CurrentState(null,never):sandbox.audio.lowpassprocessor.State;
    /** Is this processor active? */
    var Enabled(default,default):Bool;
    /** Should we fade the influence of this processor in? */
    var Mix(default,default):Single;
    /** The listener's position in this frame. */
    @:protected
    var Listener(null,never):Transform;
    /** Processes a single audio channel with a low-pass filter. */
    @:protected function ProcessSingleChannel(channel:sandbox.audio.AudioChannel, input:system.Span<Single>):Void;
}
