package sandbox.fastnoise;

@:native("FastNoise.FractalType")
extern enum abstract FractalType(Int) {
    var FBM;
    var Billow;
    var RigidMulti;
}
