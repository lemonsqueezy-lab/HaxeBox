package sandbox;

@:native("Sandbox.ComputeBuffer`1")
extern class ComputeBuffer<T> {
    function new(elementCount:Int, type:sandbox.ComputeBufferType):Void;
    /** Number of elements in the buffer. */
    var ElementCount(default,never):Int;
    /** Size of a single element in the buffer. */
    var ElementSize(default,never):Int;
    /** What sort of buffer this is */
    var Usage(default,never):sandbox.gpubuffer.UsageFlags;
    var IsValid(default,never):Bool;
}
