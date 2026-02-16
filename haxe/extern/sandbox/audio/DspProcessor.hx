package sandbox.audio;

@:native("Sandbox.Audio.DspProcessor")
final extern class DspProcessor extends sandbox.audio.AudioProcessor<sandbox.audio.dspprocessor.State> {
    overload function new():Void;
    overload function new(dspName:String):Void;
    var Effect(default,default):sandbox.audio.DspPresetHandle;
    function ToString():String;
}
