package sandbox;

/** A GameObject which is saved to a file. */
@:native("Sandbox.PrefabFile")
extern class PrefabFile extends sandbox.GameResource {
    function new():Void;
    /** Contains the original JSON read from File. */
    var RootObject(default,default):system.text.json.nodes.JsonObject;
    /** If true then we'll show this in the right click menu, so people can create it */
    var ShowInMenu(default,default):Bool;
    /** If ShowInMenu is true, this is the path in the menu for this prefab */
    var MenuPath(default,default):String;
    /** Icon to show to the left of the option in the menu */
    var MenuIcon(default,default):String;
    /** If true then the prefab will not be broken when created as a template */
    var DontBreakAsTemplate(default,default):Bool;
    @:protected function CreateAssetTypeIcon(width:Int, height:Int):sandbox.Bitmap;
    /** Read metadata saved using a ISceneMetadata based component, such as SceneInformation */
    function GetMetadata(title:String, defaultValue:String):String;
    /** Get the actual scene scene */
    function GetScene():sandbox.PrefabScene;
    @:protected function OnDestroy():Void;
    @:protected function PostLoad():Void;
    @:protected function PostReload():Void;
}
