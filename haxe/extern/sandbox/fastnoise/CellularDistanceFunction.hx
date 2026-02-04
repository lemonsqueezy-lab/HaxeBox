package sandbox.fastnoise;

@:native("FastNoise.CellularDistanceFunction")
extern enum abstract CellularDistanceFunction(Int) {
    var Euclidean;
    var Manhattan;
    var Natural;
}
