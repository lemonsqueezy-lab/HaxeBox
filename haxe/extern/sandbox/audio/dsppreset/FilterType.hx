package sandbox.audio.dsppreset;

@:native("Sandbox.Audio.DspPreset.FilterType")
extern enum abstract FilterType(Int) {
    var LowPass;
    var HighPass;
    var BandPass;
}
