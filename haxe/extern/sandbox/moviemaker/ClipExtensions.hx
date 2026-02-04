package sandbox.moviemaker;

/** Helper methods for working with and . */
@:native("Sandbox.MovieMaker.ClipExtensions")
final extern class ClipExtensions {
    /** How deeply are we nested? Root tracks have depth 0. */
    static function GetDepth(track:sandbox.moviemaker.ITrack):Int;
    static function GetPath(track:sandbox.moviemaker.ITrack):system.ValueTuple2<sandbox.moviemaker.IReferenceTrack<Dynamic>,system.collections.generic.IReadOnlyList<String>>;
    /** Searches for a property track with the given , starting from the root level of the clip. */
    static overload function GetProperty<T>(clip:sandbox.moviemaker.IMovieClip, path:Array<String>):sandbox.moviemaker.IPropertyTrack<T>;
    static overload function GetProperty<T>(clip:sandbox.moviemaker.compiled.MovieClip, path:Array<String>):sandbox.moviemaker.compiled.CompiledPropertyTrack<T>;
    static overload function GetProperty<T>(clip:sandbox.moviemaker.IMovieClip, refTrackId:system.Guid, path:system.collections.generic.IReadOnlyList<String>):sandbox.moviemaker.IPropertyTrack<T>;
    static overload function GetProperty<T>(clip:sandbox.moviemaker.compiled.MovieClip, refTrackId:system.Guid, path:system.collections.generic.IReadOnlyList<String>):sandbox.moviemaker.compiled.CompiledPropertyTrack<T>;
    /** Searches for a track with the given , starting from the root level of the clip. */
    static overload function GetReference<T>(clip:sandbox.moviemaker.IMovieClip, path:Array<String>):sandbox.moviemaker.IReferenceTrack<T>;
    static overload function GetReference<T>(clip:sandbox.moviemaker.compiled.MovieClip, path:Array<String>):sandbox.moviemaker.compiled.CompiledReferenceTrack<T>;
    /** Searches for a track with the given , starting from the root level of the clip. */
    static overload function GetTrack(clip:sandbox.moviemaker.IMovieClip, path:Array<String>):sandbox.moviemaker.ITrack;
    static overload function GetTrack(clip:sandbox.moviemaker.compiled.MovieClip, path:Array<String>):sandbox.moviemaker.compiled.ICompiledTrack;
    /** For each track in the given that we have a mapped property for, set the property value to whatever value is stored in that track at the given . */
    static overload function Update(clip:sandbox.moviemaker.IMovieClip, time:sandbox.moviemaker.MovieTime, binder:sandbox.moviemaker.TrackBinder):Bool;
    static overload function Update(track:sandbox.moviemaker.IPropertyTrack<Dynamic>, time:sandbox.moviemaker.MovieTime, binder:sandbox.moviemaker.TrackBinder):Bool;
    static overload function Update<T>(track:sandbox.moviemaker.IPropertyTrack<T>, time:sandbox.moviemaker.MovieTime, binder:sandbox.moviemaker.TrackBinder):Bool;
}
