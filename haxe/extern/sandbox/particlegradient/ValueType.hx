package sandbox.particlegradient;

@:native("Sandbox.ParticleGradient.ValueType")
extern enum abstract ValueType(Int) {
    var Constant;
    var Range;
    var Gradient;
}
