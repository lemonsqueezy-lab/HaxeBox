package sandbox.vertexbufferhandle;

@:native("Sandbox.VertexBufferHandle.LockHandler`1")
final extern class LockHandler<T> extends system.MulticastDelegate {
    function new(object:cs.system.Object, method:system.IntPtr):Void;
    function BeginInvoke(data:system.Span<T>, callback:system.AsyncCallback, object:cs.system.Object):system.IAsyncResult;
    function EndInvoke(result:system.IAsyncResult):Void;
    function Invoke(data:system.Span<T>):Void;
}
