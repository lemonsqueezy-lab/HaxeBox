package sandbox.actiongraphs;

/** Some game logic implemented using visual scripting */
@:native("Sandbox.ActionGraphs.ActionGraphResource")
final extern class ActionGraphResource {
    function new():Void;
    var DisplayInfo(default,never):sandbox.DisplayInfo;
    var SerializedGraph(default,default):system.text.json.nodes.JsonNode;
    var Graph(default,default):facepunch.actiongraphs.ActionGraph;
    var Title(default,default):String;
    var Description(default,default):String;
    var Category(default,default):String;
    var Icon(default,default):String;
    @:protected
    var ActionGraphTargetType(null,never):cs.system.Type;
    @:protected
    var ActionGraphTarget(null,never):cs.system.Object;
    /** True if this resource has changed but the changes aren't written to disk */
    var HasUnsavedChanges(default,never):Bool;
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
}
