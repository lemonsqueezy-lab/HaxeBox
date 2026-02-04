package sandbox.vr.vrsystem;

@:native("Sandbox.VR.VRSystem.States")
extern enum abstract States(Int) {
    var Shutdown;
    var Standby;
    var PreInit;
    var Active;
}
