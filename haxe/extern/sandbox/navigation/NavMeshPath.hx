package sandbox.navigation;

/** Contains the result of a pathfinding operation. */
@:native("Sandbox.Navigation.NavMeshPath")
final extern class NavMeshPath {
    /** The outcome of the path calculation. */
    var Status(default,set):sandbox.navigation.NavMeshPathStatus;

    private inline function set_Status(value:sandbox.navigation.NavMeshPathStatus):sandbox.navigation.NavMeshPathStatus {
        var __value:sandbox.navigation.NavMeshPathStatus = cast value;
        return untyped __cs__("{0}.Status = {1}", this, __value);
    }

    /** True if a path was found. */
    var IsValid(default,never):Bool;
    /** Points along the path. */
    var Points(default,set):system.collections.generic.IReadOnlyList<sandbox.navigation.NavMeshPathPoint>;

    private inline function set_Points(value:system.collections.generic.IReadOnlyList<sandbox.navigation.NavMeshPathPoint>):system.collections.generic.IReadOnlyList<sandbox.navigation.NavMeshPathPoint> {
        var __value:system.collections.generic.IReadOnlyList<sandbox.navigation.NavMeshPathPoint> = cast value;
        return untyped __cs__("{0}.Points = {1}", this, __value);
    }

}
