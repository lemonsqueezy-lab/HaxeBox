package sandbox;

@:native("Sandbox.PropertyAccessor")
extern enum abstract PropertyAccessor(Int) {
    var Get;
    var Set;
}
