package sandbox;

/** An area that influences the NavMesh generation. Areas can be used to block off parts of the NavMesh. Static areas have almost no performance overhead. Moving areas at runtime will have an impact on performance if done excessively. */
@:native("Sandbox.NavMeshArea")
extern class NavMeshArea extends sandbox.volumes.VolumeComponent {
    function new():Void;
    /** Whether navmesh generation in this area will be completely disabled. */
    var IsBlocker(default,default):Bool;
    /** The NavMesh area definition to apply to this area. */
    var Area(default,default):sandbox.engine.resources.NavMeshAreaDefinition;
    /** The collider this area's shape is based on. In almost every case, you will want to use a trigger collider for this. */
    var LinkedCollider(default,default):sandbox.Collider;
    @:protected function OnDirty():Void;
    @:protected function OnLoad(context:sandbox.LoadingContext):system.threading.tasks.Task;
}
