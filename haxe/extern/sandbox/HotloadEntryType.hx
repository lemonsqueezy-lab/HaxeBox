package sandbox;

/** Used to categorize messages emitted when performing a hotload. */
@:native("Sandbox.HotloadEntryType")
extern enum abstract HotloadEntryType(Int) {
    var Trace;
    var Information;
    var Warning;
    var Error;
}
