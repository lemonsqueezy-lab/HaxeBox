package sandbox;

@:native("Sandbox.VertexAttributeFormat")
extern enum abstract VertexAttributeFormat(UInt) {
    var Float32;
    var Float16;
    var SInt32;
    var UInt32;
    var SInt16;
    var UInt16;
    var SInt8;
    var UInt8;
}
