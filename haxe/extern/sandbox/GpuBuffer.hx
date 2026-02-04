package sandbox;

@:native("Sandbox.GpuBuffer`1")
extern class GpuBuffer<T> {
    function new(elementCount:Int, flags:sandbox.gpubuffer.UsageFlags, debugName:String):Void;
    /** Number of elements in the buffer. */
    var ElementCount(default,never):Int;
    /** Size of a single element in the buffer. */
    var ElementSize(default,never):Int;
    /** What sort of buffer this is */
    var Usage(default,never):sandbox.gpubuffer.UsageFlags;
    var IsValid(default,never):Bool;
    overload function GetData(data:system.Span<T>):Void;
    overload function GetData(data:system.Span<T>, start:Int, count:Int):Void;
    overload function GetDataAsync(callback:system.Action1<system.ReadOnlySpan<T>>):Void;
    overload function GetDataAsync(callback:system.Action1<system.ReadOnlySpan<T>>, start:Int, count:Int):Void;
    function SetData(data:system.Span<T>, elementOffset:Int):Void;
}
