package sandbox.audio;

/** Just a test - don't count on this sticking around */
@:native("Sandbox.Audio.LowPassProcessor")
final extern class LowPassProcessor extends sandbox.audio.AudioProcessor<sandbox.audio.lowpassprocessor.State> {
    function new():Void;
    /** Cutoff frequency for the low-pass filter (normalized 0 to 1). */
    var Cutoff(default,default):Single;
    /** Processes a single audio channel with a low-pass filter. */
    @:protected function ProcessSingleChannel(channel:sandbox.audio.AudioChannel, input:system.Span<Single>):Void;
}
