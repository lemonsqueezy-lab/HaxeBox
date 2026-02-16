package sandbox.mesh;

@:native("Sandbox.Mesh.IndexBufferLockHandler")
final extern class IndexBufferLockHandler extends system.MulticastDelegate {
    function new(object:cs.system.Object, method:system.IntPtr):Void;
    function BeginInvoke(data:system.Span<Int>, callback:system.AsyncCallback, object:cs.system.Object):system.IAsyncResult;
    function EndInvoke(result:system.IAsyncResult):Void;
    function Invoke(data:system.Span<Int>):Void;
}
