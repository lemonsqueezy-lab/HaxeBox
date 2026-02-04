package sandbox;

/** Physics simulation mode. For use with . */
@:native("Sandbox.PhysicsSimulationMode")
extern enum abstract PhysicsSimulationMode(Int) {
    var Discrete;
    var Continuous;
}
