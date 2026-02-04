package sandbox.moviemaker.properties;

/** Coordinates playing bone animations from s. Holds a for s in the scene, which store any movie-controlled bone transforms. */
@:native("Sandbox.MovieMaker.Properties.MovieBoneAnimatorSystem")
final extern class MovieBoneAnimatorSystem {
    function new(scene:sandbox.Scene):Void;
    var Scene(default,never):sandbox.Scene;
    var Id(default,never):system.Guid;
    /** Clears all movie-driven bone transformations for the given . */
    function ClearBones(renderer:sandbox.SkinnedModelRenderer):Void;
    /** Gets the current movie-driven parent-space transform for the given bone. If this bone isn't currently being controlled by a movie, returns its current transform. */
    function GetParentSpaceBone(renderer:sandbox.SkinnedModelRenderer, index:Int):Transform;
    /** Sets the current movie-driven parent-space transform for the given bone. */
    function SetParentSpaceBone(renderer:sandbox.SkinnedModelRenderer, index:Int, transform:Transform):Void;
    /** Applies any active movie-driven bone transformations. */
    function UpdateBones():Void;
}
