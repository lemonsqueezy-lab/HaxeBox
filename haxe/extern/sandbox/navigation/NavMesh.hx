package sandbox.navigation;

/** Navigation Mesh - allowing AI to navigate a world */
@:native("Sandbox.Navigation.NavMesh")
final extern class NavMesh {
    /** Determines wether the navigation mesh is enabled and should be generated */
    var IsEnabled(default,default):Bool;
    /** The navigation mesh is generating */
    var IsGenerating(default,never):Bool;
    /** The navigation mesh is dirty and needs a complete rebuild */
    var IsDirty(default,never):Bool;
    /** Should the generator include static bodies */
    var IncludeStaticBodies(default,default):Bool;
    /** Should the generator include keyframed bodies */
    var IncludeKeyframedBodies(default,default):Bool;
    /** Don't include these bodies in the generation */
    var ExcludedBodies(default,default):sandbox.TagSet;
    /** If any, we'll only include bodies with this tag */
    var IncludedBodies(default,default):sandbox.TagSet;
    /** Constantly update the navigation mesh in the editor */
    var EditorAutoUpdate(default,default):Bool;
    /** Draw the navigation mesh in the editor */
    var DrawMesh(default,default):Bool;
    /** Height of the agent */
    var AgentHeight(default,default):Single;
    /** The radius of the agent. This will change how much gap is left on the edges of surfaces, so they don't clip into walls. */
    var AgentRadius(default,default):Single;
    /** The maximum height an agent can climb (step) */
    var AgentStepSize(default,default):Single;
    /** The maximum slope an agent can walk up (in degrees) */
    var AgentMaxSlope(default,default):Single;
    /** Computes a navigation path between the specified start and target positions on the navmesh. Uses the same pathfinding algorithm as , taking agent configuration into account if provided. The result is suitable for direct use with . If a complete path cannot be found, the result may indicate an incomplete or failed path. */
    function CalculatePath(request:sandbox.navigation.CalculatePathRequest):sandbox.navigation.NavMeshPath;
    function Dispose():Void;
    @:protected function Finalize():Void;
    function Generate(world:sandbox.PhysicsWorld):system.threading.tasks.Task1<Bool>;
    /** Generates or regenerates the navmesh tile at the given world position. This function is thread safe but can only be called from the main thread. */
    function GenerateTile(world:sandbox.PhysicsWorld, worldPosition:Vector3):system.threading.tasks.Task;
    /** Generates or regenerates the navmesh tiles overlapping with the given bounds. This function is thread safe but can only be called from the main thread. */
    function GenerateTiles(world:sandbox.PhysicsWorld, bounds:BBox):system.threading.tasks.Task;
    overload function GetClosestEdge(box:BBox):Null<Vector3>;
    overload function GetClosestEdge(position:Vector3, radius:Single):Null<Vector3>;
    overload function GetClosestPoint(box:BBox):Null<Vector3>;
    overload function GetClosestPoint(position:Vector3, radius:Single):Null<Vector3>;
    /** Get a random point on the navmesh, within the bounding box. This will return null if it can't find a point on the navmesh in a few tries. Returning false doesn't mean it's impossible, our algorithm here isn't the best. */
    overload function GetRandomPoint():Null<Vector3>;
    overload function GetRandomPoint(box:BBox):Null<Vector3>;
    overload function GetRandomPoint(position:Vector3, radius:Single):Null<Vector3>;
    function GetSimplePath(from:Vector3, to:Vector3):system.collections.generic.List<Vector3>;
    /** Set the navgiation a dirty, so it will rebuild over the next few frames. If you need an immediate rebuild, call instead. */
    function SetDirty():Void;
}
