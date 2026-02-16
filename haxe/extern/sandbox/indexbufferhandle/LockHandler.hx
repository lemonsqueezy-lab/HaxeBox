package sandbox.indexbufferhandle;

@:native("Sandbox.IndexBufferHandle.LockHandler")
final extern class LockHandler extends system.MulticastDelegate {
    function new(object:cs.system.Object, method:system.IntPtr):Void;
    function BeginInvoke(data:system.Span<Int>, callback:system.AsyncCallback, object:cs.system.Object):system.IAsyncResult;
    function EndInvoke(result:system.IAsyncResult):Void;
    function Invoke(data:system.Span<Int>):Void;
}
