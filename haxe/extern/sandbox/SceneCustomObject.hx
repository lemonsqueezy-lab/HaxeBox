package sandbox;

/** A scene object that allows custom rendering within a scene world. */
@:native("Sandbox.SceneCustomObject")
extern class SceneCustomObject extends sandbox.SceneObject {
    function new(sceneWorld:sandbox.SceneWorld):Void;
    var RenderOverride(default,default):system.Action1<sandbox.SceneObject>;
    /** Called when this scene object needs to be rendered. Invokes by default. See the library for a starting point. */
    function RenderSceneObject():Void;
}
