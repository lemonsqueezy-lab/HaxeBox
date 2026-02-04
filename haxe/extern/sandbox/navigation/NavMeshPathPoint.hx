package sandbox.navigation;

/** Represents a point in a navmesh path, including its position in 3D space. May be extended in the future to hold more information about the point. */
@:native("Sandbox.Navigation.NavMeshPathPoint")
final extern class NavMeshPathPoint {
    var Position(default,set):Vector3;

    private inline function set_Position(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Position = {1}", this, __value);
    }

}
