package sandbox.gameobjectsystem;

/** When implementing an ITraceProvider, the most important thing to keep in mind is that the call to DoTrace should be thread safe. This might be called from multiple threads at once, so you better watch out. */
@:native("Sandbox.GameObjectSystem.ITraceProvider")
extern class ITraceProvider {
    overload function DoTrace(trace:sandbox.SceneTrace):Null<sandbox.SceneTraceResult>;
    overload function DoTrace(trace:sandbox.SceneTrace, results:system.collections.generic.List<sandbox.SceneTraceResult>):Void;
}
