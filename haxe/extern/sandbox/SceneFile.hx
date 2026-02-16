package sandbox;

/** A scene file contains a collection of GameObject with Components and their properties. */
@:native("Sandbox.SceneFile")
extern class SceneFile extends sandbox.GameResource {
    function new():Void;
    var Id(default,default):system.Guid;
    var GameObjects(default,default):Array<system.text.json.nodes.JsonObject>;
    var SceneProperties(default,default):system.text.json.nodes.JsonObject;
    var Title(default,never):String;
    var Description(default,never):String;
    @:protected function CreateAssetTypeIcon(width:Int, height:Int):sandbox.Bitmap;
    function GetMetadata(title:String, defaultValue:String):String;
}
