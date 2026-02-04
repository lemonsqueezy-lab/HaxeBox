package sandbox.moviemaker.compiled;

/** This block has a single constant value for the whole duration. Useful for value types that can't be interpolated, and change infrequently. */
@:native("Sandbox.MovieMaker.Compiled.ICompiledConstantBlock")
extern class ICompiledConstantBlock {
    /** Json-serialized constant value. */
    var Serialized(default,never):system.text.json.nodes.JsonNode;
}
