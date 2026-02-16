package sandbox;

/** An agent that can navigate the navmesh defined in the scene. */
@:native("Sandbox.NavMeshAgent")
final extern class NavMeshAgent extends sandbox.Component {
    function new():Void;
    var Height(default,default):Single;
    var Radius(default,default):Single;
    var MaxSpeed(default,default):Single;
    /** The maximum acceleration a agent can have. This is how fast the agent can change its velocity. If you want snappy movement this should be as high or higher than . */
    var Acceleration(default,default):Single;
    /** Set the Position of the GameObject to the agent position every frame. You can turn this off and handle it yourself by using the AgentPosition property. */
    var UpdatePosition(default,default):Bool;
    /** This will simply face the direction it is moving. It is not configurable on purpose, so you should really turn this off and be doing this yourself if you need it to do anything specific. */
    var UpdateRotation(default,default):Bool;
    /** What areas the agent is allowed to travel on. If empty, all areas are allowed. */
    var AllowedAreas(default,default):system.collections.generic.HashSet<sandbox.engine.resources.NavMeshAreaDefinition>;
    /** What areas the agent is not allowed to travel on. If empty, no areas are forbidden. */
    var ForbiddenAreas(default,default):system.collections.generic.HashSet<sandbox.engine.resources.NavMeshAreaDefinition>;
    /** Is the agent allowed to travel on the default area? */
    var AllowDefaultArea(default,default):Bool;
    /** Should the agent automatically traverse links when it reaches them? Or do you want to implement your own link traversal logic? */
    var AutoTraverseLinks(default,default):Bool;
    /** Gets or sets the separation factor used to control how strongly agents avoid crowding each other. */
    var Separation(default,default):Single;
    /** Updated with the agent's position, even if UpdatePosition is false */
    var AgentPosition(default,never):Vector3;
    /** Gets the current target position for the agent, if one is set. */
    var TargetPosition(default,never):Null<Vector3>;
    var Velocity(default,default):Vector3;
    /** The velocity the agent would like to move at, you can pass this into a PlayerController. */
    var WishVelocity(default,never):Vector3;
    /** Returns true if the agent is currently navigating to a target. */
    var IsNavigating(default,never):Bool;
    var SyncAgentPosition(default,default):Bool;
    /** Emitted when the agent enters a link. */
    var LinkEnter(default,default):system.Action;
    /** Emitted when the agent exits a link. */
    var LinkExit(default,default):system.Action;
    /** Returns true if the agent is currently traversing a link. */
    var IsTraversingLink(default,never):Bool;
    var CurrentLinkTraversal(default,default):Null<sandbox.navmeshagent.LinkTraversalData>;
    /** Finish link traversal, must be called after traversing a link if AutoTraverseLinks is false. */
    function CompleteLinkTraversal():Void;
    @:protected function DrawGizmos():Void;
    /** Get a point on the current path, distance away from here. This is a simplified path so only includes the first few corners. */
    function GetLookAhead(distance:Single):Vector3;
    /** Returns the agent's current path as a NavMeshPath. This is not free, so avoid calling it every frame. */
    function GetPath():sandbox.navigation.NavMeshPath;
    /** Navigate to the position */
    function MoveTo(targetPosition:Vector3):Void;
    @:protected function OnDirty():Void;
    @:protected function OnDisabled():Void;
    @:protected function OnEnabled():Void;
    @:protected function OnFixedUpdate():Void;
    @:protected function OnUpdate():Void;
    /** If you want to move the agent from one position to another */
    function SetAgentPosition(position:Vector3):Void;
    /** Assigns a precalculated path for the agent to follow. The agent will attempt to follow the path, but may adjust its movement to avoid obstacles or other agents. If the path becomes invalid during navigation, it may be recalculated completely. */
    function SetPath(path:sandbox.navigation.NavMeshPath):Void;
    /** Stop moving, or whatever we're doing */
    function Stop():Void;
}
