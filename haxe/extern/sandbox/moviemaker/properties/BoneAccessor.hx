package sandbox.moviemaker.properties;

/** Pseudo-property on a that has a sub-property for each bone. Stores movie-driven transforms for each bone during playback, and applies them when performs . */
@:native("Sandbox.MovieMaker.Properties.BoneAccessor")
final extern class BoneAccessor {
    function new(renderer:sandbox.SkinnedModelRenderer):Void;
    /** Renderer this accessor was created for. */
    var Renderer(default,never):sandbox.SkinnedModelRenderer;
    /** Applies any movie-driven bone transforms. Called during . */
    function ApplyOverrides():Void;
    /** Clears any movie-driven bone transforms for this renderer. */
    function ClearOverrides():Void;
    /** Gets the current movie-driven parent-space transform of the given bone. If the bone isn't controlled by a movie, just returns the current parent-space transform. */
    function GetParentSpace(index:Int):Transform;
    /** Helper to see if the renderer's model has a bone with the given . */
    function HasBone(name:String):Bool;
    /** Sets the current movie-driven parent-space transform of the given bone. */
    function SetParentSpace(index:Int, value:Transform):Void;
}
