package sandbox.gpubuffer;

/** You can combine these e.g UsageFlags.Index | UsageFlags.ByteAddress for a buffer that can be used as an index buffer and in a compute shader. */
@:native("Sandbox.GpuBuffer.UsageFlags")
extern enum abstract UsageFlags(Int) {
    var Vertex;
    var Index;
    var ByteAddress;
    var Structured;
    var Append;
    var Counter;
    var IndirectDrawArguments;
}
