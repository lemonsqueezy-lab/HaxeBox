package sandbox.moviemaker;

/** An embedded in a property. */
@:native("Sandbox.MovieMaker.EmbeddedMovieResource")
final extern class EmbeddedMovieResource {
    function new():Void;
    var Compiled(default,default):sandbox.moviemaker.compiled.MovieClip;
    var EditorData(default,default):system.text.json.nodes.JsonNode;
    function StateHasChanged(project:sandbox.moviemaker.IMovieProject):Void;
}
