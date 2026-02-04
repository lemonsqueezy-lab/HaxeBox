package sandbox;

@:native("Sandbox.VertexAttributeType")
extern enum abstract VertexAttributeType(Int) {
    var Position;
    var Normal;
    var Tangent;
    var TexCoord;
    var Color;
    var BlendIndices;
    var BlendWeights;
}
