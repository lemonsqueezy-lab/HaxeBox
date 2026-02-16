package sandbox.actiongraphs;

/** Some game logic implemented using visual scripting */
@:native("Sandbox.ActionGraphs.ActionGraphResource")
final extern class ActionGraphResource extends sandbox.GameResource {
    function new():Void;
    var DisplayInfo(default,never):sandbox.DisplayInfo;
    var SerializedGraph(default,default):system.text.json.nodes.JsonNode;
    var Graph(default,default):facepunch.actiongraphs.ActionGraph;
    var Title(default,default):String;
    var Description(default,default):String;
    var Category(default,default):String;
    var Icon(default,default):String;
    @:protected function CreateAssetTypeIcon(width:Int, height:Int):sandbox.Bitmap;
}
