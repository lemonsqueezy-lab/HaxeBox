package sandbox.moviemaker.compiled;

@:native("Sandbox.MovieMaker.Compiled.ICompiledPropertyTrack")
extern class ICompiledPropertyTrack {
    var Parent(default,never):sandbox.moviemaker.compiled.ICompiledTrack;
    var Blocks(default,never):system.collections.generic.IReadOnlyList<sandbox.moviemaker.compiled.ICompiledPropertyBlock<Dynamic>>;
    function GetBlock(time:sandbox.moviemaker.MovieTime):sandbox.moviemaker.compiled.ICompiledPropertyBlock<Dynamic>;
}
