package sandbox;

/** A scene world that contains s. See Utility.CreateSceneWorld. You may also want a to manually render the scene world. */
@:native("Sandbox.SceneWorld")
final extern class SceneWorld {
    function new():Void;
    /** List of scene objects belonging to this scene world. */
    var SceneObjects(default,never):system.collections.generic.IReadOnlyCollection<sandbox.SceneObject>;
    /** Trace against all scene objects in this scene world */
    var Trace(default,never):sandbox.engine.utility.raytrace.MeshTraceRequest;
    var GradientFog(default,default):sandbox.rendering.GradientFogSetup;
    var AmbientLightColor(default,default):Color;
    var ClearColor(default,default):Color;
    /** Delete this scene world. You shouldn't access it anymore. */
    function Delete():Void;
    /** Deleted objects are actually deleted at the end of each frame. Call this to actually delete pending deletes right now instead of waiting. */
    function DeletePendingObjects():Void;
}
