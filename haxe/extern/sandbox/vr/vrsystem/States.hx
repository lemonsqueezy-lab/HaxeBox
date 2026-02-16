package sandbox.vr.vrsystem;

@:native("Sandbox.VR.VRSystem.States")
extern enum abstract States(Int) {
    var Inactive;
    var Standby;
    var Active;
}
