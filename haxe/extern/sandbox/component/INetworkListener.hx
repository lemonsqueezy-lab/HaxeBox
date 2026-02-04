package sandbox.component;

/** A with this interface can react to network events. */
@:native("Sandbox.Component.INetworkListener")
extern class INetworkListener {
    function AcceptConnection(channel:sandbox.Connection, reason:String):Bool;
    /** Called when someone is all loaded and entered the game. This will only be called for the host. */
    function OnActive(channel:sandbox.Connection):Void;
    /** Called when the host of the game has left - and you are now the new host. */
    function OnBecameHost(previousHost:sandbox.Connection):Void;
    /** Called when someone joins the server. This will only be called for the host. */
    function OnConnected(channel:sandbox.Connection):Void;
    /** Called when someone leaves the server. This will only be called for the host. */
    function OnDisconnected(channel:sandbox.Connection):Void;
}
