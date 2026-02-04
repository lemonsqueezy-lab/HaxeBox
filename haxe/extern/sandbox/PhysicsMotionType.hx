package sandbox;

/** Represents Physics body's motion type. */
@:native("Sandbox.PhysicsMotionType")
extern enum abstract PhysicsMotionType(Int) {
    var Invalid;
    var Dynamic;
    var Static;
    var Keyframed;
}
