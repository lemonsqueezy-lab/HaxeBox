package sandbox.moviemaker;

/** A container for a , including optional . */
@:native("Sandbox.MovieMaker.IMovieResource")
extern class IMovieResource {
    /** Compiled movie clip. */
    var Compiled(default,default):sandbox.moviemaker.compiled.MovieClip;
    /** Editor-only data used to generate . */
    var EditorData(default,default):system.text.json.nodes.JsonNode;
    /** Mark this resource as modified, with changes coming from the given . */
    function StateHasChanged(project:sandbox.moviemaker.IMovieProject):Void;
}
