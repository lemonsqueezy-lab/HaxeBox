package sandbox.audio;

@:native("Sandbox.Audio.PitchProcessor")
final extern class PitchProcessor extends sandbox.audio.AudioProcessor<sandbox.audio.pitchprocessor.State> {
    function new():Void;
    var Pitch(default,default):Single;
}
