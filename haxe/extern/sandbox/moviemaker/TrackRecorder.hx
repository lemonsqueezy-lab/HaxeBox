package sandbox.moviemaker;

@:native("Sandbox.MovieMaker.TrackRecorder`1")
final extern class TrackRecorder<T> {
    function new(track:sandbox.moviemaker.IPropertyTrack<T>, target:sandbox.moviemaker.ITrackProperty<T>, options:sandbox.moviemaker.RecorderOptions, startTime:sandbox.moviemaker.MovieTime):Void;
    var Track(default,never):sandbox.moviemaker.IPropertyTrack<T>;
    var Target(default,never):sandbox.moviemaker.ITrackProperty<T>;
    var FinishedBlocks(default,never):system.collections.generic.IReadOnlyList<sandbox.moviemaker.compiled.ICompiledPropertyBlock<T>>;
    var CurrentBlock(default,never):sandbox.moviemaker.IPropertyBlock<T>;
    function Advance(deltaTime:sandbox.moviemaker.MovieTime):Bool;
    function ToBlocks():system.collections.immutable.ImmutableArray<sandbox.moviemaker.compiled.ICompiledPropertyBlock<T>>;
}
