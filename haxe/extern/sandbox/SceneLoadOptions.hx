package sandbox;

@:native("Sandbox.SceneLoadOptions")
extern class SceneLoadOptions {
    function new():Void;
    var ShowLoadingScreen(default,default):Bool;
    var IsAdditive(default,default):Bool;
    /** If true, on load we'll even delete objects that are marked as DontDelete */
    var DeleteEverything(default,default):Bool;
    var Offset(default,default):Transform;
    function GetSceneFile():sandbox.SceneFile;
    overload function SetScene(sceneFileName:String):Bool;
    overload function SetScene(sceneFile:sandbox.SceneFile):Bool;
}
