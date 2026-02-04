package sandbox.navmeshagent;

/** Holds information about the current link the agent is traversing. */
@:native("Sandbox.NavMeshAgent.LinkTraversalData")
final extern class LinkTraversalData {
    /** The start position of the traversal. Depending on the direction traversing, this is either LinkComponent.WorldStartPositionOnNavMesh or LinkComponent.WorldEndPositionOnNavMesh. */
    var LinkEnterPosition(default,set):Vector3;

    private inline function set_LinkEnterPosition(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.LinkEnterPosition = {1}", this, __value);
    }

    /** The end position of the traversal. Where the agent should exit. Depending on the direction traversing, this is either LinkComponent.WorldStartPositionOnNavMesh or LinkComponent.WorldEndPositionOnNavMesh. */
    var LinkExitPosition(default,set):Vector3;

    private inline function set_LinkExitPosition(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.LinkExitPosition = {1}", this, __value);
    }

    /** The position at which the agent entered the link. */
    var AgentInitialPosition(default,set):Vector3;

    private inline function set_AgentInitialPosition(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.AgentInitialPosition = {1}", this, __value);
    }

    /** The Link component that the agent is traversing. May be null if the agent is traversing a link created without a NavMeshLink component. */
    var LinkComponent(default,set):sandbox.NavMeshLink;

    private inline function set_LinkComponent(value:sandbox.NavMeshLink):sandbox.NavMeshLink {
        var __value:sandbox.NavMeshLink = cast value;
        return untyped __cs__("{0}.LinkComponent = {1}", this, __value);
    }

    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.navmeshagent.LinkTraversalData):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
