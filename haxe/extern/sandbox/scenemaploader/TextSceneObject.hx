package sandbox.scenemaploader;

@:native("Sandbox.SceneMapLoader.TextSceneObject")
extern class TextSceneObject extends sandbox.SceneCustomObject {
    function new(sceneWorld:sandbox.SceneWorld):Void;
    var Text(default,default):String;
    var FontName(default,default):String;
    var FontSize(default,default):Single;
    var FontWeight(default,default):Single;
    var TextFlags(default,default):sandbox.TextFlag;
    function RenderSceneObject():Void;
}
