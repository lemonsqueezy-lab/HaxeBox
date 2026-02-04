package sandbox.vr.vrhand;

/** Represents a controller to use when fetching skeletal data (finger curl/splay values) */
@:native("Sandbox.VR.VRHand.HandSources")
extern enum abstract HandSources(Int) {
    var Left;
    var Right;
}
