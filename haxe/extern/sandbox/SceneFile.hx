package sandbox;

/** A scene file contains a collection of GameObject with Components and their properties. */
@:native("Sandbox.SceneFile")
extern class SceneFile {
    function new():Void;
    var Id(default,default):system.Guid;
    var GameObjects(default,default):Array<system.text.json.nodes.JsonObject>;
    var SceneProperties(default,default):system.text.json.nodes.JsonObject;
    var ResourceVersion(default,never):Int;
    @:protected
    var ActionGraphTargetType(null,never):cs.system.Type;
    @:protected
    var ActionGraphTarget(null,never):cs.system.Object;
    var Title(default,never):String;
    var Description(default,never):String;
    /** True if this resource has changed but the changes aren't written to disk */
    var HasUnsavedChanges(default,never):Bool;
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
    function GetMetadata(title:String, defaultValue:String):String;
}
