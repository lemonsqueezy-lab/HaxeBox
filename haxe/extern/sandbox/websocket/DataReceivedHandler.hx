package sandbox.websocket;

/** Event handler which processes binary messages from the WebSocket service. */
@:native("Sandbox.WebSocket.DataReceivedHandler")
final extern class DataReceivedHandler {
    function new(object:cs.system.Object, method:system.IntPtr):Void;
    var Target(default,never):cs.system.Object;
    var Method(default,never):system.reflection.MethodInfo;
    function BeginInvoke(data:system.Span<Int>, callback:system.AsyncCallback, object:cs.system.Object):system.IAsyncResult;
    function EndInvoke(result:system.IAsyncResult):Void;
    function Invoke(data:system.Span<Int>):Void;
}
