package sandbox;

@:native("Sandbox.TimingEntry")
extern class TimingEntry {
    function new():Void;
    /** Total number of instances processed. */
    var Instances(default,default):Int;
    /** Total time taken processing instances. */
    var Milliseconds(default,default):Float;
}
