package sandbox;

/** Allows listening to events related to scene loading */
@:native("Sandbox.ISceneLoadingEvents")
extern class ISceneLoadingEvents {
    /** Loading has finished */
    function AfterLoad(scene:sandbox.Scene):Void;
    /** Called before the loading starts */
    function BeforeLoad(scene:sandbox.Scene, options:sandbox.SceneLoadOptions):Void;
    /** Called during loading. The game will wait for your task to finish */
    overload function OnLoad(scene:sandbox.Scene, options:sandbox.SceneLoadOptions):system.threading.tasks.Task;
    overload function OnLoad(scene:sandbox.Scene, options:sandbox.SceneLoadOptions, context:sandbox.LoadingContext):system.threading.tasks.Task;
}
