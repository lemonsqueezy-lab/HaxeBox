package sandbox.ui;

/** Allows to render a scene world onto a panel. */
@:native("Sandbox.UI.ScenePanel")
extern class ScenePanel extends sandbox.ui.Panel {
    overload function new():Void;
    /** Creates and loads a Scene from a file to render to this panel. */
    overload function new(sceneFilename:String):Void;
    /** Shortcut to Camera.World */
    var World(default,default):sandbox.SceneWorld;
    /** The camera we're going to be using to render */
    var Camera(default,never):sandbox.SceneCamera;
    /** If enabled, the scene will only render once. That isn't totally accurate though, because we'll also re-render the scene when the size of the panel changes. */
    var RenderOnce(default,default):Bool;
    /** The texture that the panel is rendering to internally. This will change to a different texture if the panel changes size, so I wouldn't hold onto this object. */
    var RenderTexture(default,never):sandbox.Texture;
    /** The Scene this panel renders. */
    var RenderScene(default,default):sandbox.Scene;
    function Delete(immediate:Bool):Void;
    /** Render the panel again next frame. This is meant to be used with RenderOnce, where you might want to render on demand or only once. */
    function RenderNextFrame():Void;
    function SetProperty(name:String, value:String):Void;
    function Tick():Void;
}
