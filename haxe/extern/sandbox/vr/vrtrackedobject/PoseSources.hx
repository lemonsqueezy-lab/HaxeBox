package sandbox.vr.vrtrackedobject;

/** Represents tracked devices to use when updating */
@:native("Sandbox.VR.VRTrackedObject.PoseSources")
extern enum abstract PoseSources(Int) {
    var Head;
    var LeftHand;
    var RightHand;
}
