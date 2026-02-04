package sandbox.vr;

@:native("Sandbox.VR.TrackedDeviceType")
extern enum abstract TrackedDeviceType(Int) {
    var Invalid;
    var Hmd;
    var Controller;
    var Tracker;
    var BaseStation;
    var Redirect;
}
