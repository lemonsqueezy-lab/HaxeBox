package sandbox;

/** Allows listening to network events on a specific GameObject */
@:native("Sandbox.IGameObjectNetworkEvents")
extern class IGameObjectNetworkEvents {
    /** Called when the owner of a network GameObject is changed */
    function NetworkOwnerChanged(newOwner:sandbox.Connection, previousOwner:sandbox.Connection):Void;
    /** We have become the controller of this object, we are no longer a proxy */
    function StartControl():Void;
    /** This object has become a proxy, controlled by someone else */
    function StopControl():Void;
}
