package sandbox.ambientocclusion;

@:native("Sandbox.AmbientOcclusion.SampleQuality")
extern enum abstract SampleQuality(Int) {
    var Off;
    var Low;
    var Medium;
    var High;
}
