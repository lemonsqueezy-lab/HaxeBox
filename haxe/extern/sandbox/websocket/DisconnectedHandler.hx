package sandbox.websocket;

/** Event handler which fires when the WebSocket disconnects from the server. */
@:native("Sandbox.WebSocket.DisconnectedHandler")
final extern class DisconnectedHandler extends system.MulticastDelegate {
    function new(object:cs.system.Object, method:system.IntPtr):Void;
    function BeginInvoke(status:Int, reason:String, callback:system.AsyncCallback, object:cs.system.Object):system.IAsyncResult;
    function EndInvoke(result:system.IAsyncResult):Void;
    function Invoke(status:Int, reason:String):Void;
}
