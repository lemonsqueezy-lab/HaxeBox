package sandbox.ambientocclusion;

@:native("Sandbox.AmbientOcclusion.DenoiseModes")
extern enum abstract DenoiseModes(Int) {
    var Spatial;
    var Temporal;
}
