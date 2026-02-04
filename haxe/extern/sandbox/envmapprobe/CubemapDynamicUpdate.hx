package sandbox.envmapprobe;

@:native("Sandbox.EnvmapProbe.CubemapDynamicUpdate")
extern enum abstract CubemapDynamicUpdate(Int) {
    var OnEnabled;
    var EveryFrame;
    var FrameInterval;
    var TimeInterval;
}
