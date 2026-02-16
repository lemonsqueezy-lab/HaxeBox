package sandbox.audio;

@:native("Sandbox.Audio.DelayProcessor")
final extern class DelayProcessor extends sandbox.audio.AudioProcessor<sandbox.audio.delayprocessor.State> {
    function new():Void;
    var Delay(default,default):Single;
    var Volume(default,default):Single;
}
