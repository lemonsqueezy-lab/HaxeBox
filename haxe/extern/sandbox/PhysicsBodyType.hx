package sandbox;

@:native("Sandbox.PhysicsBodyType")
extern enum abstract PhysicsBodyType(Int) {
    var Static;
    var Keyframed;
    var Dynamic;
}
