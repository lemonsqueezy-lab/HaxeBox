package sandbox.websurface;

@:native("Sandbox.WebSurface.TextureChangedDelegate")
final extern class TextureChangedDelegate extends system.MulticastDelegate {
    function new(object:cs.system.Object, method:system.IntPtr):Void;
    function BeginInvoke(span:system.ReadOnlySpan<Int>, size:Vector2, callback:system.AsyncCallback, object:cs.system.Object):system.IAsyncResult;
    function EndInvoke(result:system.IAsyncResult):Void;
    function Invoke(span:system.ReadOnlySpan<Int>, size:Vector2):Void;
}
