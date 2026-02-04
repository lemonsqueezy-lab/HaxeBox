package sandbox.component;

/** A with this interface can determine whether a networked object should be visible for a specific . */
@:native("Sandbox.Component.INetworkVisible")
extern class INetworkVisible {
    function IsVisibleToConnection(connection:sandbox.Connection, worldBounds:BBox):Bool;
}
