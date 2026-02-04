package sandbox.physicsbodybuilder;

/** The method used to simplify a hull. */
@:native("Sandbox.PhysicsBodyBuilder.SimplifyMethod")
extern enum abstract SimplifyMethod(Int) {
    var QEM;
    var IVR;
    var None;
    var IFR;
}
