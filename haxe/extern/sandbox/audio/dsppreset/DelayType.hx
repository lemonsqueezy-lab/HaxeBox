package sandbox.audio.dsppreset;

@:native("Sandbox.Audio.DspPreset.DelayType")
extern enum abstract DelayType(Int) {
    var Plain;
    var AllPass;
    var LowPass;
    var Linear;
    var FilteredLinear;
    var LowPass4Tap;
    var Paint4Tap;
}
