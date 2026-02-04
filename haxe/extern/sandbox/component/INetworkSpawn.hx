package sandbox.component;

/** A with this interface can listen for when a GameObject in its ancestors has been network spawned. */
@:native("Sandbox.Component.INetworkSpawn")
extern class INetworkSpawn {
    /** Called when this object is spawned on the network. */
    function OnNetworkSpawn(owner:sandbox.Connection):Void;
}
