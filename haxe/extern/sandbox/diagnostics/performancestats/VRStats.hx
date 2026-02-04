package sandbox.diagnostics.performancestats;

@:native("Sandbox.Diagnostics.PerformanceStats.VRStats")
extern class VRStats {
    function new():Void;
    var NumFrames(default,default):UInt;
    var NumDroppedFrames(default,default):UInt;
    var ReprojectionRatio(default,default):Single;
    var TotalRenderGpu(default,default):Single;
    var CompositorRenderGpu(default,default):Single;
    var CompositorRenderCpu(default,default):Single;
    var ResolutionScale(default,default):Single;
    var Resolution(default,default):Vector2;
    var InterpupillaryDistance(default,default):Single;
    var LeftControllerBatteryPercentage(default,default):Single;
    var RightControllerBatteryPercentage(default,default):Single;
    var HeadsetBatteryPercentage(default,default):Single;
}
