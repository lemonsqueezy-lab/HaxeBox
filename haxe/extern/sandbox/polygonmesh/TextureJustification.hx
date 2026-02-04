package sandbox.polygonmesh;

@:native("Sandbox.PolygonMesh.TextureJustification")
extern enum abstract TextureJustification(Int) {
    var None;
    var Top;
    var Bottom;
    var Left;
    var Center;
    var Right;
    var Fit;
    var FitX;
    var FitY;
}
