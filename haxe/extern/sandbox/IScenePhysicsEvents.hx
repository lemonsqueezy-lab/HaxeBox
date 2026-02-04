package sandbox;

/** Allows events before and after the the physics step */
@:native("Sandbox.IScenePhysicsEvents")
extern class IScenePhysicsEvents {
    /** Called after the physics step is run */
    function PostPhysicsStep():Void;
    /** Called before the physics step is run. This is called pretty much right after FixedUpdate. */
    function PrePhysicsStep():Void;
}
