package sandbox.gpubuffer;

@:native("Sandbox.GpuBuffer.IndirectDrawArguments")
final extern class IndirectDrawArguments {
    var VertexCount(default,set):UInt;

    private inline function set_VertexCount(value:UInt):UInt {
        var __value:UInt = cast value;
        return untyped __cs__("{0}.VertexCount = {1}", this, __value);
    }

    var InstanceCount(default,set):UInt;

    private inline function set_InstanceCount(value:UInt):UInt {
        var __value:UInt = cast value;
        return untyped __cs__("{0}.InstanceCount = {1}", this, __value);
    }

    var FirstVertex(default,set):UInt;

    private inline function set_FirstVertex(value:UInt):UInt {
        var __value:UInt = cast value;
        return untyped __cs__("{0}.FirstVertex = {1}", this, __value);
    }

    var FirstInstance(default,set):UInt;

    private inline function set_FirstInstance(value:UInt):UInt {
        var __value:UInt = cast value;
        return untyped __cs__("{0}.FirstInstance = {1}", this, __value);
    }

}
