package sandbox.gpubuffer;

@:native("Sandbox.GpuBuffer.IndirectDrawIndexedArguments")
final extern class IndirectDrawIndexedArguments {
    var IndexCount(default,set):UInt;

    private inline function set_IndexCount(value:UInt):UInt {
        var __value:UInt = cast value;
        return untyped __cs__("{0}.IndexCount = {1}", this, __value);
    }

    var InstanceCount(default,set):UInt;

    private inline function set_InstanceCount(value:UInt):UInt {
        var __value:UInt = cast value;
        return untyped __cs__("{0}.InstanceCount = {1}", this, __value);
    }

    var FirstIndex(default,set):UInt;

    private inline function set_FirstIndex(value:UInt):UInt {
        var __value:UInt = cast value;
        return untyped __cs__("{0}.FirstIndex = {1}", this, __value);
    }

    var BaseVertex(default,set):Int;

    private inline function set_BaseVertex(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.BaseVertex = {1}", this, __value);
    }

    var FirstInstance(default,set):UInt;

    private inline function set_FirstInstance(value:UInt):UInt {
        var __value:UInt = cast value;
        return untyped __cs__("{0}.FirstInstance = {1}", this, __value);
    }

}
