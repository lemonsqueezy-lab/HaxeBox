package sandbox.fastnoise;

@:native("FastNoise.NoiseType")
extern enum abstract NoiseType(Int) {
    var Value;
    var ValueFractal;
    var Perlin;
    var PerlinFractal;
    var Simplex;
    var SimplexFractal;
    var Cellular;
    var WhiteNoise;
    var Cubic;
    var CubicFractal;
}
