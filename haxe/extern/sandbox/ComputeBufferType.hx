package sandbox;

@:native("Sandbox.ComputeBufferType")
extern enum abstract ComputeBufferType(Int) {
    var Structured;
    var ByteAddress;
    var Append;
    var IndirectDrawArguments;
}
