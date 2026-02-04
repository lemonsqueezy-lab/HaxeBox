package sandbox;

/** Specifies how a should be networked. */
@:native("Sandbox.NetworkMode")
extern enum abstract NetworkMode(Int) {
    var Never;
    var Object;
    var Snapshot;
}
