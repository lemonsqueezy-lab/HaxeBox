package sandbox.diagnostics;

@:native("Sandbox.Diagnostics.PerformanceStats")
final extern class PerformanceStats {
    /** Get the time taken, in seconds, that were required to process the previous frame. */
    static var FrameTime(default,never):Float;
    /** Latest available GPU frametime, in ms. */
    static var GpuFrametime(default,never):Single;
    /** Frame number of the last reported . */
    static var GpuFrameNumber(default,never):UInt;
    /** The number of bytes that were allocated on the managed heap in the last frame. This may not include allocations from threads other than the game thread. */
    static var BytesAllocated(default,never):haxe.Int64;
    /** Number of generation 0 (fastest) garbage collections were done in the last frame. */
    static var Gen0Collections(default,never):Int;
    /** Number of generation 1 (fast) garbage collections were done in the last frame. */
    static var Gen1Collections(default,never):Int;
    /** Number of generation 2 (slow) garbage collections were done in the last frame. */
    static var Gen2Collections(default,never):Int;
    /** How many ticks we paused in the last frame */
    static var GcPause(default,never):haxe.Int64;
    /** Number of exceptions in the last frame. */
    static var Exceptions(default,never):Int;
    /** Approximate working set of this process. */
    static var ApproximateProcessMemoryUsage(default,never):system.UInt64;
    /** Performance statistics over the last period, which is dictated by "perf_time" console command. */
    static var LastSecond(default,never):sandbox.diagnostics.performancestats.Block;
    /** Stats retrieved from the SteamVR compositor */
    static var VR(default,never):sandbox.diagnostics.performancestats.VRStats;
}
