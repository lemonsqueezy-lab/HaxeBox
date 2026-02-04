package sandbox.moviemaker;

@:native("Sandbox.MovieMaker.ITrackRecorder")
extern class ITrackRecorder {
    var Track(default,never):sandbox.moviemaker.IPropertyTrack<Dynamic>;
    var Target(default,never):sandbox.moviemaker.ITrackProperty<Dynamic>;
    var FinishedBlocks(default,never):system.collections.generic.IReadOnlyList<sandbox.moviemaker.compiled.ICompiledPropertyBlock<Dynamic>>;
    var CurrentBlock(default,never):sandbox.moviemaker.IPropertyBlock<Dynamic>;
    function Advance(deltaTime:sandbox.moviemaker.MovieTime):Bool;
    function ToBlocks():system.collections.generic.IReadOnlyList<sandbox.moviemaker.compiled.ICompiledPropertyBlock<Dynamic>>;
}
