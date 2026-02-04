package sandbox.polygonmesh;

@:native("Sandbox.PolygonMesh.DissolveRemoveVertexCondition")
extern enum abstract DissolveRemoveVertexCondition(Int) {
    var None;
    var Colinear;
    var InteriorOrColinear;
    var All;
}
