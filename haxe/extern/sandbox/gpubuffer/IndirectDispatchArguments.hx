package sandbox.gpubuffer;

@:native("Sandbox.GpuBuffer.IndirectDispatchArguments")
final extern class IndirectDispatchArguments {
    var ThreadGroupCountX(default,set):UInt;

    private inline function set_ThreadGroupCountX(value:UInt):UInt {
        var __value:UInt = cast value;
        return untyped __cs__("{0}.ThreadGroupCountX = {1}", this, __value);
    }

    var ThreadGroupCountY(default,set):UInt;

    private inline function set_ThreadGroupCountY(value:UInt):UInt {
        var __value:UInt = cast value;
        return untyped __cs__("{0}.ThreadGroupCountY = {1}", this, __value);
    }

    var ThreadGroupCountZ(default,set):UInt;

    private inline function set_ThreadGroupCountZ(value:UInt):UInt {
        var __value:UInt = cast value;
        return untyped __cs__("{0}.ThreadGroupCountZ = {1}", this, __value);
    }

}
