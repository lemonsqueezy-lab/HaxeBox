package sandbox.utility;

/** Provides access to coherent noise utilities. All of these functions should return between 0 and 1. */
@:native("Sandbox.Utility.Noise")
final extern class Noise {
    /** Fractional Brownian Motion noise, a.k.a. Fractal Perlin noise. For a thread-safe alternative with more options, use with . */
    static function Fbm(octaves:Int, x:Single, y:Single, z:Single):Single;
    /** Fractional Brownian Motion noise, a.k.a. Fractal Perlin noise. */
    static function FbmVector(octaves:Int, x:Single, y:Single):Vector3;
    /** 2D Perlin noise function. For a thread-safe alternative with more options, use . */
    static overload function Perlin(x:Single, y:Single):Single;
    static overload function Perlin(x:Single, y:Single, z:Single):Single;
    /** Creates a Perlin noise field, which smoothly samples a grid of random gradients. Use a for the field to have multiple octaves. */
    static function PerlinField(parameters:sandbox.utility.noise.Parameters):sandbox.utility.INoiseField;
    /** 2D Simplex noise function. For a thread-safe alternative with more options, use . */
    static overload function Simplex(x:Single, y:Single):Single;
    static overload function Simplex(x:Single, y:Single, z:Single):Single;
    /** Creates a Simplex noise field, a cheaper gradient noise function similar to . Use a for the field to have multiple octaves. */
    static function SimplexField(parameters:sandbox.utility.noise.Parameters):sandbox.utility.INoiseField;
    /** Creates a Value noise field, effectively smoothly sampled white noise. Use a for the field to have multiple octaves. */
    static function ValueField(parameters:sandbox.utility.noise.Parameters):sandbox.utility.INoiseField;
}
