package sandbox.envmapprobe;

@:native("Sandbox.EnvmapProbe.CubemapResolution")
extern enum abstract CubemapResolution(Int) {
    var Small;
    var Medium;
    var Large;
    var Huge;
}
