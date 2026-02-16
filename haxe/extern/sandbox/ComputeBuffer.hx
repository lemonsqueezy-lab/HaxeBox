package sandbox;

@:native("Sandbox.ComputeBuffer`1")
extern class ComputeBuffer<T> extends sandbox.GpuBuffer<T> {
    function new(elementCount:Int, type:sandbox.ComputeBufferType):Void;
}
