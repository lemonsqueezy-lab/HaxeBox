package sandbox.indexbufferhandle;

@:native("Sandbox.IndexBufferHandle.LockHandler")
final extern class LockHandler {
    function new(object:cs.system.Object, method:system.IntPtr):Void;
    var Target(default,never):cs.system.Object;
    var Method(default,never):system.reflection.MethodInfo;
    function BeginInvoke(data:system.Span<Int>, callback:system.AsyncCallback, object:cs.system.Object):system.IAsyncResult;
    function EndInvoke(result:system.IAsyncResult):Void;
    function Invoke(data:system.Span<Int>):Void;
}
