package sandbox.moviemaker;

@:native("Sandbox.MovieMaker.ITrackProperty`1")
extern class ITrackProperty<T> {
    var Value(default,default):T;
    function Update(track:sandbox.moviemaker.IPropertyTrack<T>, time:sandbox.moviemaker.MovieTime):Bool;
}
