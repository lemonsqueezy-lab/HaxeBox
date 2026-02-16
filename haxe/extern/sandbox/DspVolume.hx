package sandbox;

@:native("Sandbox.DspVolume")
extern class DspVolume extends sandbox.volumes.VolumeComponent {
    function new():Void;
    var Dsp(default,default):sandbox.audio.DspPresetHandle;
    var TargetMixer(default,default):sandbox.audio.MixerHandle;
    var Priority(default,default):Int;
}
