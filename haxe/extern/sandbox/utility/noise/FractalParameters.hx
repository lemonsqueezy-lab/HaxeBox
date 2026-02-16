package sandbox.utility.noise;

/** Parameters for constructing a fractal noise field, which layers multiple octaves of a noise function with increasing frequency and reducing amplitudes. */
@:native("Sandbox.Utility.Noise.FractalParameters")
extern class FractalParameters extends sandbox.utility.noise.Parameters {
    /** Parameters for constructing a fractal noise field, which layers multiple octaves of a noise function with increasing frequency and reducing amplitudes. */
    overload function new(Seed:Int, Frequency:Single, Octaves:Int, Gain:Single, Lacunarity:Single):Void;
    @:protected overload function new(original:sandbox.utility.noise.FractalParameters):Void;
    /** How many layers of noise to use. */
    var Octaves(default,default):Int;
    /** How much to multiply the amplitude of each successive octave by. */
    var Gain(default,default):Single;
    /** How much to multiply the frequency of each successive octave by. */
    var Lacunarity(default,default):Single;
    function Deconstruct(Seed:Int, Frequency:Single, Octaves:Int, Gain:Single, Lacunarity:Single):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.utility.noise.FractalParameters):Bool;
    overload function Equals(other:sandbox.utility.noise.Parameters):Bool;
    function GetHashCode():Int;
    @:protected function PrintMembers(builder:system.text.StringBuilder):Bool;
    function ToString():String;
}
