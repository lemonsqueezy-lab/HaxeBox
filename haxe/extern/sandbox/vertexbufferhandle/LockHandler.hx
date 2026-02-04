package sandbox.vertexbufferhandle;

@:native("Sandbox.VertexBufferHandle.LockHandler`1")
final extern class LockHandler<T> {
    function new(object:cs.system.Object, method:system.IntPtr):Void;
    var Target(default,never):cs.system.Object;
    var Method(default,never):system.reflection.MethodInfo;
    function BeginInvoke(data:system.Span<T>, callback:system.AsyncCallback, object:cs.system.Object):system.IAsyncResult;
    function EndInvoke(result:system.IAsyncResult):Void;
    function Invoke(data:system.Span<T>):Void;
}
