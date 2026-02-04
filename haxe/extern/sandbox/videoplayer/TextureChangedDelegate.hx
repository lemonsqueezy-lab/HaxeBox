package sandbox.videoplayer;

@:native("Sandbox.VideoPlayer.TextureChangedDelegate")
final extern class TextureChangedDelegate {
    function new(object:cs.system.Object, method:system.IntPtr):Void;
    var Target(default,never):cs.system.Object;
    var Method(default,never):system.reflection.MethodInfo;
    function BeginInvoke(span:system.ReadOnlySpan<Int>, size:Vector2, callback:system.AsyncCallback, object:cs.system.Object):system.IAsyncResult;
    function EndInvoke(result:system.IAsyncResult):Void;
    function Invoke(span:system.ReadOnlySpan<Int>, size:Vector2):Void;
}
