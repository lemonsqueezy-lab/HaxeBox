package sandbox.resources.randomtexturegenerator;

@:native("Sandbox.Resources.RandomTextureGenerator.NoiseType")
extern enum abstract NoiseType(Int) {
    var Random;
    var Perlin;
    var Simplex;
}
