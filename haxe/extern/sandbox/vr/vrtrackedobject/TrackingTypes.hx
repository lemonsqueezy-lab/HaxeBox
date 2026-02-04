package sandbox.vr.vrtrackedobject;

/** Represents transform values to update */
@:native("Sandbox.VR.VRTrackedObject.TrackingTypes")
extern enum abstract TrackingTypes(Int) {
    var None;
    var Rotation;
    var Position;
    var All;
}
