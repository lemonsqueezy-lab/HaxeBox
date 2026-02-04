package sandbox.moviemaker;

/** A time region where something happens in a movie track. */
@:native("Sandbox.MovieMaker.ITrackBlock")
extern class ITrackBlock {
    /** Start and end time of this block. */
    var TimeRange(default,never):sandbox.moviemaker.MovieTimeRange;
}
