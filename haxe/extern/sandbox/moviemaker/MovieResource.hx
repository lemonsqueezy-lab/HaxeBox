package sandbox.moviemaker;

/** A movie clip created with the MoviePlayer component. */
@:native("Sandbox.MovieMaker.MovieResource")
final extern class MovieResource {
    function new():Void;
    var Compiled(default,default):sandbox.moviemaker.compiled.MovieClip;
    var EditorData(default,default):system.text.json.nodes.JsonNode;
    /** True if this resource has changed but the changes aren't written to disk */
    var HasUnsavedChanges(default,never):Bool;
    /** Target type used for any action graphs contained in this resource. Defaults to this resource's type. */
    @:protected
    var ActionGraphTargetType(null,never):cs.system.Type;
    /** Target instance used for any action graphs contained in this resource. Defaults to this resource itself. */
    @:protected
    var ActionGraphTarget(null,never):cs.system.Object;
    /** The version of the component. Used by . */
    var ResourceVersion(default,never):Int;
    var IsValid(default,never):Bool;
    /** ID of this resource, */
    @:protected
    var ResourceId(default,null):Int;
    /** Path to this resource. */
    @:protected
    var ResourcePath(default,null):String;
    /** File name of the resource without the extension. */
    @:protected
    var ResourceName(default,null):String;
    /** Embedded data for this resource */
    var EmbeddedResource(default,default):Null<sandbox.resources.EmbeddedResource>;
    @:protected function CreateAssetTypeIcon(width:Int, height:Int):sandbox.Bitmap;
    @:protected function OnJsonSerialize(node:system.text.json.nodes.JsonObject):Void;
    function StateHasChanged(project:sandbox.moviemaker.IMovieProject):Void;
}
