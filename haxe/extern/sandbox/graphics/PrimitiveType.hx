package sandbox.graphics;

@:native("Sandbox.Graphics.PrimitiveType")
extern enum abstract PrimitiveType(Int) {
    var Points;
    var Lines;
    var LinesWithAdjacency;
    var LineStrip;
    var LineStripWithAdjacency;
    var Triangles;
    var TrianglesWithAdjacency;
    var TriangleStrip;
    var TriangleStripWithAdjacency;
}
