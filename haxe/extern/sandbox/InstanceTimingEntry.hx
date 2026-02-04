package sandbox;

/** Holds information about the number of instances and total time taken when processing instances in a certain category. */
@:native("Sandbox.InstanceTimingEntry")
extern class InstanceTimingEntry {
    function new():Void;
    /** The full names and instance count for each static field that instances were found under. Only populated if is set to true. */
    var Roots(default,never):system.collections.generic.Dictionary<String,sandbox.TimingEntry>;
    /** Total number of instances processed. */
    var Instances(default,default):Int;
    /** Total time taken processing instances. */
    var Milliseconds(default,default):Float;
}
