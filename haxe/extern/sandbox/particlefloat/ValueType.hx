package sandbox.particlefloat;

@:native("Sandbox.ParticleFloat.ValueType")
extern enum abstract ValueType(Int) {
    var Constant;
    var Range;
    var Curve;
    var CurveRange;
}
