package sandbox;

/** NavigationLinks connect navigation mesh polygons for pathfinding and enable shortcuts like ladders, jumps, or teleports. */
@:native("Sandbox.NavMeshLink")
extern class NavMeshLink extends sandbox.Component {
    function new():Void;
    /** Start position relative to the game object's position. */
    var LocalStartPosition(default,default):Vector3;
    /** End position relative to the game object's position. */
    var LocalEndPosition(default,default):Vector3;
    /** Start position in world space snapped to the navmesh. */
    var WorldStartPositionOnNavmesh(default,never):Null<Vector3>;
    /** End position in world space snapped to the navmesh. */
    var WorldEndPositionOnNavmesh(default,never):Null<Vector3>;
    /** The NavMesh area definition to apply to this link. */
    var Area(default,default):sandbox.engine.resources.NavMeshAreaDefinition;
    /** Emitted when an agent enters the link. */
    var LinkEntered(default,default):system.Action1<sandbox.NavMeshAgent>;
    /** Emitted when an agent exits the link. */
    var LinkExited(default,default):system.Action1<sandbox.NavMeshAgent>;
    /** Start position in world space. */
    var WorldStartPosition(default,default):Vector3;
    /** End position in world space. */
    var WorldEndPosition(default,default):Vector3;
    var IsBiDirectional(default,default):Bool;
    var ConnectionRadius(default,default):Single;
    @:protected function DrawGizmos():Void;
    /** Called when an agent enters the link. */
    @:protected function OnLinkEntered(agent:sandbox.NavMeshAgent):Void;
    /** Called when an agent exits the link. */
    @:protected function OnLinkExited(agent:sandbox.NavMeshAgent):Void;
}
