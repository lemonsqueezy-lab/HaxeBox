package sandbox.moviemaker;

/** Plays a in a to animate properties over time. */
@:native("Sandbox.MovieMaker.MoviePlayer")
final extern class MoviePlayer extends sandbox.Component {
    function new():Void;
    /** Maps s to game objects, components, and property s in the scene. */
    var Binder(default,never):sandbox.moviemaker.TrackBinder;
    /** Contains a to play. Can be a or . */
    var Resource(default,default):sandbox.moviemaker.IMovieResource;
    var Clip(default,default):sandbox.moviemaker.IMovieClip;
    var IsPlaying(default,default):Bool;
    var IsLooping(default,default):Bool;
    var TimeScale(default,default):Single;
    var Position(default,default):sandbox.moviemaker.MovieTime;
    var PositionSeconds(default,default):Single;
    @:protected function OnDisabled():Void;
    @:protected function OnEnabled():Void;
    @:protected function OnUpdate():Void;
    /** Play the current movie from the start. */
    overload function Play():Void;
    overload function Play(movie:sandbox.moviemaker.MovieResource):Void;
}
