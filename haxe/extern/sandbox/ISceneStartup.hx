package sandbox;

/** Allows listening to events related to scene startup. This should really only apply to GameObjectSystem's because components won't have been spawned/created when most of this is invoked. */
@:native("Sandbox.ISceneStartup")
extern class ISceneStartup {
    /** Called in game after the client has loaded the initial scene from the server, or after OnHostInitialize. This is not called on the dedicated server. */
    function OnClientInitialize():Void;
    /** Called after the scene is loaded. In game only, on the host only. */
    function OnHostInitialize():Void;
    /** Called before the scene is loaded. In game only, on host only. */
    function OnHostPreInitialize(scene:sandbox.SceneFile):Void;
}
