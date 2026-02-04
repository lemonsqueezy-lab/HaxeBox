package sandbox;

/** Describes the behaviour of network synchronization. */
@:native("Sandbox.SyncFlags")
extern enum abstract SyncFlags(UInt) {
    var FromHost;
    var Query;
    var Interpolate;
}
