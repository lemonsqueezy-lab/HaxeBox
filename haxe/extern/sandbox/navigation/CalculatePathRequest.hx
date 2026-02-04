package sandbox.navigation;

/** Defines the input for a pathfinding request on the navmesh. */
@:native("Sandbox.Navigation.CalculatePathRequest")
final extern class CalculatePathRequest {
    var Start(default,set):Vector3;

    private inline function set_Start(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Start = {1}", this, __value);
    }

    var Target(default,set):Vector3;

    private inline function set_Target(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Target = {1}", this, __value);
    }

    var Agent(default,set):sandbox.NavMeshAgent;

    private inline function set_Agent(value:sandbox.NavMeshAgent):sandbox.NavMeshAgent {
        var __value:sandbox.NavMeshAgent = cast value;
        return untyped __cs__("{0}.Agent = {1}", this, __value);
    }

}
