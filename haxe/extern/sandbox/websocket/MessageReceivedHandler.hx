package sandbox.websocket;

/** Event handler which processes text messages from the WebSocket service. */
@:native("Sandbox.WebSocket.MessageReceivedHandler")
final extern class MessageReceivedHandler {
    function new(object:cs.system.Object, method:system.IntPtr):Void;
    var Target(default,never):cs.system.Object;
    var Method(default,never):system.reflection.MethodInfo;
    function BeginInvoke(message:String, callback:system.AsyncCallback, object:cs.system.Object):system.IAsyncResult;
    function EndInvoke(result:system.IAsyncResult):Void;
    function Invoke(message:String):Void;
}
