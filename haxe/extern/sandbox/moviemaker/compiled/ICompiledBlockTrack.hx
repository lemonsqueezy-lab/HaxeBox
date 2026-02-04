package sandbox.moviemaker.compiled;

@:native("Sandbox.MovieMaker.Compiled.ICompiledBlockTrack")
extern class ICompiledBlockTrack {
    var Blocks(default,never):system.collections.generic.IReadOnlyList<sandbox.moviemaker.compiled.ICompiledBlock>;
    var TimeRange(default,never):sandbox.moviemaker.MovieTimeRange;
}
