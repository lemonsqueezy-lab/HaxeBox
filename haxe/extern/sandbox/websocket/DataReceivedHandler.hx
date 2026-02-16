package sandbox.websocket;

/** Event handler which processes binary messages from the WebSocket service. */
@:native("Sandbox.WebSocket.DataReceivedHandler")
final extern class DataReceivedHandler extends system.MulticastDelegate {
    function new(object:cs.system.Object, method:system.IntPtr):Void;
    function BeginInvoke(data:system.Span<Int>, callback:system.AsyncCallback, object:cs.system.Object):system.IAsyncResult;
    function EndInvoke(result:system.IAsyncResult):Void;
    function Invoke(data:system.Span<Int>):Void;
}
