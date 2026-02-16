package sandbox.audio;

/** Just a test - don't count on this sticking around */
@:native("Sandbox.Audio.HighPassProcessor")
final extern class HighPassProcessor extends sandbox.audio.AudioProcessor<sandbox.audio.highpassprocessor.State> {
    function new():Void;
    /** Cutoff frequency of the high-pass filter (0 to 1, where 1 is Nyquist frequency). */
    var Cutoff(default,default):Single;
    /** Processes each channel individually using a simple one-pole high-pass filter. */
    @:protected function ProcessSingleChannel(channel:sandbox.audio.AudioChannel, input:system.Span<Single>):Void;
}
