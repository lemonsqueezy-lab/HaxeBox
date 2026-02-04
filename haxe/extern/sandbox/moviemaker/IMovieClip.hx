package sandbox.moviemaker;

/** A collection of s describing properties changing over time and actions being invoked. */
@:native("Sandbox.MovieMaker.IMovieClip")
extern class IMovieClip {
    /** All tracks within the clip. */
    var Tracks(default,never):system.collections.generic.IEnumerable<sandbox.moviemaker.ITrack>;
    /** How long this clip takes to fully play. */
    var Duration(default,never):sandbox.moviemaker.MovieTime;
    /** Attempts to get a reference track with the given . */
    function GetTrack(trackId:system.Guid):sandbox.moviemaker.IReferenceTrack<Dynamic>;
    /** Get tracks that are active at the given . */
    function GetTracks(time:sandbox.moviemaker.MovieTime):system.collections.generic.IEnumerable<sandbox.moviemaker.ITrack>;
}
