package sandbox.polygonmesh;

@:native("Sandbox.PolygonMesh.BevelEdgesMode")
extern enum abstract BevelEdgesMode(Int) {
    var LeaveOriginalEdges;
    var RemoveOriginalEdges;
    var RemoveClosedEdges;
}
