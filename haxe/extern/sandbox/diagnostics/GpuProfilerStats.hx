package sandbox.diagnostics;

/** GPU profiler stats collected from the scene system timestamp manager */
@:native("Sandbox.Diagnostics.GpuProfilerStats")
final extern class GpuProfilerStats {
    /** Whether GPU profiling is enabled */
    static var Enabled(default,default):Bool;
    /** Total GPU time for all tracked passes */
    static var TotalGpuTimeMs(default,never):Single;
    /** Get the current GPU timing entries */
    static var Entries(default,never):system.collections.generic.IReadOnlyList<sandbox.diagnostics.GpuTimingEntry>;
    /** Get a smoothed duration for a given name (for display purposes) */
    static function GetSmoothedDuration(name:String):Single;
}
