package sandbox.moviemaker;

@:native("Sandbox.MovieMaker.TrackRecorderCollection")
final extern class TrackRecorderCollection {
    var Count(default,never):Int;
    var Item(default,never):sandbox.moviemaker.ITrackRecorder;
    function Add(track:sandbox.moviemaker.IPropertyTrack<Dynamic>):Void;
    function GetEnumerator():system.collections.generic.IEnumerator<sandbox.moviemaker.ITrackRecorder>;
}
