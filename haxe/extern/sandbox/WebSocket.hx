package sandbox;

/** A WebSocket client for connecting to external services. */
@:native("Sandbox.WebSocket")
final extern class WebSocket {
    /** Initialized a new WebSocket client. */
    function new(maxMessageSize:Int):Void;
    /** Returns true as long as a WebSocket connection is established. */
    var IsConnected(default,never):Bool;
    /** Get the sub-protocol that was negotiated during the opening handshake. */
    var SubProtocol(default,never):String;
    /** Enable or disable compression for the websocket. If the server supports it, compression will be enabled for all messages. Note: compression is disabled by default, and can be dangerous if you are sending secrets across the network. */
    var EnableCompression(never,default):Bool;
    /** Add a sub-protocol to be negotiated during the WebSocket connection handshake. */
    function AddSubProtocol(protocol:String):Void;
    /** Establishes a connection to an external WebSocket service. */
    overload function Connect(websocketUri:String, ct:system.threading.CancellationToken):system.threading.tasks.Task;
    overload function Connect(websocketUri:String, headers:system.collections.generic.Dictionary<String,String>, ct:system.threading.CancellationToken):system.threading.tasks.Task;
    /** Cleans up resources used by the WebSocket client. This will also immediately close the connection if it is currently open. */
    function Dispose():Void;
    @:protected function Finalize():Void;
    /** Sends a binary message to the WebSocket server. */
    overload function Send(data:Array<Int>):system.threading.tasks.ValueTask;
    overload function Send(message:String):system.threading.tasks.ValueTask;
    overload function Send(data:system.ArraySegment<Int>):system.threading.tasks.ValueTask;
    overload function Send(data:system.Span<Int>):system.threading.tasks.ValueTask;
}
