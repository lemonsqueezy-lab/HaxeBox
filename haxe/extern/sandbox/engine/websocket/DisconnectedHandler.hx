package sandbox.engine.websocket;

/** Event handler which fires when the WebSocket disconnects from the server. */
@:native("Sandbox.Engine.WebSocket.DisconnectedHandler")
final extern class DisconnectedHandler {
    function new(object:cs.system.Object, method:system.IntPtr):Void;
    var Target(default,never):cs.system.Object;
    var Method(default,never):system.reflection.MethodInfo;
    function BeginInvoke(status:Int, reason:String, callback:system.AsyncCallback, object:cs.system.Object):system.IAsyncResult;
    function EndInvoke(result:system.IAsyncResult):Void;
    function Invoke(status:Int, reason:String):Void;
}
