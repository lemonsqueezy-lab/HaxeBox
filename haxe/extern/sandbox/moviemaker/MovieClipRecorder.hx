package sandbox.moviemaker;

@:native("Sandbox.MovieMaker.MovieClipRecorder")
final extern class MovieClipRecorder {
    overload function new(scene:sandbox.Scene, options:sandbox.moviemaker.RecorderOptions, startTime:sandbox.moviemaker.MovieTime):Void;
    overload function new(binder:sandbox.moviemaker.TrackBinder, options:sandbox.moviemaker.RecorderOptions, startTime:sandbox.moviemaker.MovieTime):Void;
    var Binder(default,never):sandbox.moviemaker.TrackBinder;
    var Options(default,never):sandbox.moviemaker.RecorderOptions;
    var Tracks(default,never):sandbox.moviemaker.TrackRecorderCollection;
    var TimeRange(default,never):sandbox.moviemaker.MovieTimeRange;
    function Advance(deltaTime:sandbox.moviemaker.MovieTime):Bool;
    function ToClip():sandbox.moviemaker.compiled.MovieClip;
}
