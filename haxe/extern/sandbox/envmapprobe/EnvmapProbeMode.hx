package sandbox.envmapprobe;

@:native("Sandbox.EnvmapProbe.EnvmapProbeMode")
extern enum abstract EnvmapProbeMode(Int) {
    var Baked;
    var Realtime;
    var CustomTexture;
}
