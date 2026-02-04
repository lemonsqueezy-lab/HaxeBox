package sandbox.moviemaker.compiled;

/** An immutable compiled designed to be serialized. */
@:native("Sandbox.MovieMaker.Compiled.MovieClip")
final extern class MovieClip {
    /** A clip with no tracks. */
    static var Empty(default,never):sandbox.moviemaker.compiled.MovieClip;
    var Tracks(default,never):system.collections.immutable.ImmutableArray<sandbox.moviemaker.compiled.ICompiledTrack>;
    var Duration(default,never):sandbox.moviemaker.MovieTime;
    static overload function FromTracks(tracks:Array<sandbox.moviemaker.compiled.ICompiledTrack>):sandbox.moviemaker.compiled.MovieClip;
    static overload function FromTracks(tracks:system.collections.generic.IEnumerable<sandbox.moviemaker.compiled.ICompiledTrack>):sandbox.moviemaker.compiled.MovieClip;
    function GetTrack(trackId:system.Guid):sandbox.moviemaker.compiled.ICompiledReferenceTrack;
    /** Create a root that targets a with the type . To create a nested track, use . */
    static overload function RootComponent<T>(id:Null<system.Guid>):sandbox.moviemaker.compiled.CompiledReferenceTrack<T>;
    static overload function RootComponent(type:cs.system.Type, id:Null<system.Guid>):sandbox.moviemaker.compiled.ICompiledReferenceTrack;
    /** Create a root that targets a with the given . To create a nested track, use . */
    static function RootGameObject(name:String, id:Null<system.Guid>, referenceId:Null<system.Guid>):sandbox.moviemaker.compiled.CompiledReferenceTrack<sandbox.GameObject>;
}
