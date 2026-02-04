package sandbox.polygonmesh.facecutter;

@:native("Sandbox.PolygonMesh.FaceCutter.CrossingPoint")
final extern class CrossingPoint {
    var Vertex(default,set):halfedgemesh.VertexHandle;

    private inline function set_Vertex(value:halfedgemesh.VertexHandle):halfedgemesh.VertexHandle {
        var __value:halfedgemesh.VertexHandle = cast value;
        return untyped __cs__("{0}.Vertex = {1}", this, __value);
    }

    var DistanceFromSortPlane(default,set):Single;

    private inline function set_DistanceFromSortPlane(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.DistanceFromSortPlane = {1}", this, __value);
    }

}
