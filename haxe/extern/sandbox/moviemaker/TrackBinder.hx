package sandbox.moviemaker;

/** Controls which s from a scene are controlled by which from a . Can be serialized to save which tracks are bound to which targets. */
@:native("Sandbox.MovieMaker.TrackBinder")
final extern class TrackBinder {
    /** Controls which s from a scene are controlled by which from a . Can be serialized to save which tracks are bound to which targets. */
    function new(scene:sandbox.Scene):Void;
    /** The scene this binder is targeting. */
    var Scene(default,never):sandbox.Scene;
    /** Gets the default binder for the active scene. */
    static var Default(default,never):sandbox.moviemaker.TrackBinder;
    function Add(track:sandbox.moviemaker.IReferenceTrack<Dynamic>, target:sandbox.IValid):Void;
    function Deserialize(node:system.text.json.nodes.JsonNode):Void;
    /** Gets or creates a target that maps to the given . The target might not be bound to anything in the scene yet, use to check. */
    overload function Get(track:sandbox.moviemaker.IPropertyTrack<Dynamic>):sandbox.moviemaker.ITrackProperty<Dynamic>;
    overload function Get(track:sandbox.moviemaker.IReferenceTrack<Dynamic>):sandbox.moviemaker.ITrackReference<Dynamic>;
    overload function Get(track:sandbox.moviemaker.ITrack):sandbox.moviemaker.ITrackTarget<Dynamic>;
    overload function Get<T>(track:sandbox.moviemaker.IPropertyTrack<T>):sandbox.moviemaker.ITrackProperty<T>;
    overload function Get<T>(track:sandbox.moviemaker.IReferenceTrack<T>):sandbox.moviemaker.ITrackReference<T>;
    /** Get all bound component references for tracks in the given . */
    function GetComponents<T>(clip:sandbox.moviemaker.IMovieClip):system.collections.generic.IEnumerable<T>;
    function GetEnumerator():system.collections.generic.IEnumerator<system.collections.generic.KeyValuePair<system.Guid,sandbox.IValid>>;
    /** Get all property targets for tracks in the given . */
    function GetProperties<T>(clip:sandbox.moviemaker.IMovieClip):system.collections.generic.IEnumerable<sandbox.moviemaker.ITrackProperty<T>>;
    /** Get all reference targets for tracks in the given . */
    function GetReferences<T>(clip:sandbox.moviemaker.IMovieClip):system.collections.generic.IEnumerable<sandbox.moviemaker.ITrackReference<T>>;
    /** Finds track IDs currently explicitly bound to the given . */
    overload function GetTrackIds(component:sandbox.Component):system.collections.generic.IEnumerable<system.Guid>;
    overload function GetTrackIds(gameObject:sandbox.GameObject):system.collections.generic.IEnumerable<system.Guid>;
    function Serialize():system.text.json.nodes.JsonNode;
}
