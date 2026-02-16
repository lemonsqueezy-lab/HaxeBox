package sandbox.websocket;

/** Event handler which processes text messages from the WebSocket service. */
@:native("Sandbox.WebSocket.MessageReceivedHandler")
final extern class MessageReceivedHandler extends system.MulticastDelegate {
    function new(object:cs.system.Object, method:system.IntPtr):Void;
    function BeginInvoke(message:String, callback:system.AsyncCallback, object:cs.system.Object):system.IAsyncResult;
    function EndInvoke(result:system.IAsyncResult):Void;
    function Invoke(message:String):Void;
}
