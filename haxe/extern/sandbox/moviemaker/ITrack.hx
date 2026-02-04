package sandbox.moviemaker;

/** Maps to a in a scene, and describes how it changes over time. */
@:native("Sandbox.MovieMaker.ITrack")
extern class ITrack {
    /** Property or object name, used when auto-binding this track in a scene. */
    var Name(default,never):String;
    /** What type of object or property is this track targeting. */
    var TargetType(default,never):cs.system.Type;
    /** Tracks can be nested, which means child tracks can auto-bind to targets in the scene if their parent is bound. */
    var Parent(default,never):sandbox.moviemaker.ITrack;
}
