package sandbox;

/** Possible primitive types of a . */
@:native("Sandbox.MeshPrimitiveType")
extern enum abstract MeshPrimitiveType(Int) {
    var Points;
    var Lines;
    var LineStrip;
    var Triangles;
    var TriangleStrip;
}
