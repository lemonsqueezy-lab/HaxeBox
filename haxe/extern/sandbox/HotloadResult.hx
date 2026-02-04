package sandbox;

/** Contains information about an assembly hotload event, including any warnings or errors emitted, the time taken to process instances of different types, and the total number of instances processed. */
@:native("Sandbox.HotloadResult")
final extern class HotloadResult {
    function new():Void;
    var Created(default,default):system.DateTime;
    /** Contains timing information for each type processed during the hotload. */
    var TypeTimings(default,default):system.collections.generic.Dictionary<String,sandbox.InstanceTimingEntry>;
    /** Contains timing information for each IInstanceProcessor during the hotload. */
    var ProcessorTimings(default,default):system.collections.generic.Dictionary<String,sandbox.InstanceTimingEntry>;
    /** If true, at least one error was emitted during the hotload. Information about the error(s) can be found in . */
    var HasErrors(default,never):Bool;
    /** If true, at least one warning was emitted during the hotload. Information about the error(s) can be found in . */
    var HasWarnings(default,never):Bool;
    /** If true, the hotload was skipped because no replacement assemblies were specified since the last hotload. */
    var NoAction(default,default):Bool;
    /** Total time elapsed during the hotload (in milliseconds) */
    var ProcessingTime(default,default):Float;
    var InstanceQueueTime(default,default):Float;
    var StaticFieldTime(default,default):Float;
    var WatchedInstanceTime(default,default):Float;
    var DiagnosticsTime(default,default):Float;
    /** If true, no errors were emitted during the hotload. */
    var Success(default,never):Bool;
    /** Total number of instances processed during the hotload. */
    var InstancesProcessed(default,default):Int;
    /** Retrieves all warnings, errors and other messages emitted during the hotload. */
    var Entries(default,default):system.collections.generic.List<sandbox.HotloadResultEntry>;
    /** Types that were automatically determined to be safely skippable. */
    var AutoSkippedTypes(default,default):system.collections.generic.List<String>;
    /** Retrieves all error messages emitted during the hotload. */
    var Errors(default,never):system.collections.generic.IEnumerable<sandbox.HotloadResultEntry>;
    /** Retrieves all warning messages emitted during the hotload. */
    var Warnings(default,never):system.collections.generic.IEnumerable<sandbox.HotloadResultEntry>;
}
