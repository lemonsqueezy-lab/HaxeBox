package sandbox;

/** A compute shader is a program that runs on the GPU, often with data provided to/from the CPU by means of a or a . */
@:native("Sandbox.ComputeShader")
extern class ComputeShader {
    /** Create a compute shader from the specified path. */
    function new(path:String):Void;
    /** Attributes that are passed to the compute shader on dispatch. */
    var Attributes(default,never):sandbox.RenderAttributes;
    /** Dispatch this compute shader using explicit thread counts. */
    function Dispatch(threadsX:Int, threadsY:Int, threadsZ:Int):Void;
    /** Dispatch this compute shader by reading thread group counts (x, y, z) from an indirect buffer of type . */
    function DispatchIndirect(indirectBuffer:sandbox.GpuBuffer<Dynamic>, indirectElementOffset:UInt):Void;
    function DispatchIndirectWithAttributes(attributes:sandbox.RenderAttributes, indirectBuffer:sandbox.GpuBuffer<Dynamic>, indirectElementOffset:UInt):Void;
    function DispatchWithAttributes(attributes:sandbox.RenderAttributes, threadsX:Int, threadsY:Int, threadsZ:Int):Void;
}
