package sandbox.moviemaker;

/** A movie clip created with the MoviePlayer component. */
@:native("Sandbox.MovieMaker.MovieResource")
final extern class MovieResource extends sandbox.GameResource {
    function new():Void;
    var Compiled(default,default):sandbox.moviemaker.compiled.MovieClip;
    var EditorData(default,default):system.text.json.nodes.JsonNode;
    @:protected function CreateAssetTypeIcon(width:Int, height:Int):sandbox.Bitmap;
    @:protected function OnJsonSerialize(node:system.text.json.nodes.JsonObject):Void;
    function StateHasChanged(project:sandbox.moviemaker.IMovieProject):Void;
}
