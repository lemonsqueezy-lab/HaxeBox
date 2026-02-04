package sandbox.moviemaker.compiled;

/** This block contains an array of values sampled at uniform intervals. */
@:native("Sandbox.MovieMaker.Compiled.ICompiledSampleBlock")
extern class ICompiledSampleBlock {
    /** Time offset of the first sample. */
    var Offset(default,never):sandbox.moviemaker.MovieTime;
    /** How many samples per second. */
    var SampleRate(default,never):Int;
    /** Raw sample values. */
    var Samples(default,never):system.collections.generic.IReadOnlyList<cs.system.Object>;
}
