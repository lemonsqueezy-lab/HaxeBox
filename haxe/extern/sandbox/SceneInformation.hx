package sandbox;

@:native("Sandbox.SceneInformation")
extern class SceneInformation extends sandbox.Component {
    function new():Void;
    var Title(default,default):String;
    var SceneTags(default,default):sandbox.TagSet;
    var Group(default,default):String;
    var Version(default,default):String;
    var Author(default,default):String;
    var Description(default,default):String;
    var Changes(default,default):String;
    function GetMetadata():system.collections.generic.Dictionary<String,String>;
}
