package sandbox;

/** Holds information about the number of instances and total time taken when processing instances in a certain category. */
@:native("Sandbox.InstanceTimingEntry")
extern class InstanceTimingEntry extends sandbox.TimingEntry {
    function new():Void;
    /** The full names and instance count for each static field that instances were found under. Only populated if is set to true. */
    var Roots(default,never):system.collections.generic.Dictionary<String,sandbox.TimingEntry>;
}
