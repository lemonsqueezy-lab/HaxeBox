package sandbox.vr.vrtrackedobject;

/** The type of pose to track from the controller */
@:native("Sandbox.VR.VRTrackedObject.PoseTypes")
extern enum abstract PoseTypes(Int) {
    var Grip;
    var Aim;
}
