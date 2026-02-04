package sandbox.polygonmesh;

@:native("Sandbox.PolygonMesh.EdgeSmoothMode")
extern enum abstract EdgeSmoothMode(Int) {
    var Default;
    var Hard;
    var Soft;
}
