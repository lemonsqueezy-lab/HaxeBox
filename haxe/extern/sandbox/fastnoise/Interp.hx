package sandbox.fastnoise;

@:native("FastNoise.Interp")
extern enum abstract Interp(Int) {
    var Linear;
    var Hermite;
    var Quintic;
}
