package sandbox.moviemaker;

@:native("Sandbox.MovieMaker.IPropertyTrack`1")
extern class IPropertyTrack<T> {
    function TryGetValue(time:sandbox.moviemaker.MovieTime, value:T):Bool;
}
