package sandbox;

@:native("Sandbox.ColliderFlags")
extern enum abstract ColliderFlags(Int) {
    var IgnoreTraces;
    var IgnoreMass;
}
