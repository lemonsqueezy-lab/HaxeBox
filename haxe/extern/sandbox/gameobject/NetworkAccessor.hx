package sandbox.gameobject;

@:native("Sandbox.GameObject.NetworkAccessor")
extern class NetworkAccessor {
    function new(o:sandbox.GameObject):Void;
    /** Is this object networked? */
    var Active(default,never):Bool;
    /** Get the GameObject that is the root of this network object */
    var RootGameObject(default,never):sandbox.GameObject;
    /** Are we the owner of this network object? */
    var IsOwner(default,never):Bool;
    /** The Id of the owner of this object */
    var OwnerId(default,never):system.Guid;
    /** Are we the creator of this network object */
    var IsCreator(default,never):Bool;
    /** The Id of the creator of this object */
    var CreatorId(default,never):system.Guid;
    /** Is this object a network proxy? A network proxy is a network object that is not being simulated on the local pc. This means it's either owned by no-one and is being simulated by the host or owned by another client. */
    var IsProxy(default,never):Bool;
    /** Try to get the connection that owns this object. This can and will return null if we don't have information for this connection. */
    var OwnerConnection(default,never):sandbox.Connection;
    /** Try to get the connection that owns this object. This can and will return null if we don't have information for this connection. */
    var Owner(default,never):sandbox.Connection;
    /** Who can control ownership of this networked object? */
    var OwnerTransfer(default,never):sandbox.OwnerTransfer;
    /** Determines what happens when the owner disconnects. */
    var NetworkOrphaned(default,never):sandbox.NetworkOrphaned;
    /** Network flags which describe the behavior of this networked object. Can only be changed by the host after the networked object has been spawned. */
    var Flags(default,default):sandbox.NetworkFlags;
    /** Determines whether updates for this networked object are always transmitted to clients. Otherwise, they are only transmitted when the object is determined as visible to each client. */
    var AlwaysTransmit(default,default):Bool;
    /** Whether the networked object's transform is interpolated. */
    var Interpolation(default,default):Bool;
    /** Set the owner of this object to the specified . Note: whether you can assign ownership of this object depends on the of this networked object. */
    function AssignOwnership(channel:sandbox.Connection):Bool;
    function ClearInterpolation():Bool;
    /** Disable interpolation for the networked object's transform. Obsolete: 09/12/2025 */
    function DisableInterpolation():Bool;
    /** Stop being the owner of this object. Will clear the owner so the object becomes controlled by the server, and owned by no-one. Note: whether you can drop ownership of this object depends on the of this networked object. */
    function DropOwnership():Bool;
    /** Enable interpolation for the networked object's transform. Obsolete: 09/12/2025 */
    function EnableInterpolation():Bool;
    /** Send a complete refresh snapshot of this networked object to other clients. This is useful if you have made vast changes to components or children. */
    overload function Refresh():Void;
    overload function Refresh(component:sandbox.Component):Void;
    overload function Refresh(descendent:sandbox.GameObject):Void;
    /** Set what happens to this networked object when the owner disconnects. */
    function SetOrphanedMode(action:sandbox.NetworkOrphaned):Bool;
    /** Set who can control ownership of this networked object. Only the current owner can change this. */
    function SetOwnerTransfer(option:sandbox.OwnerTransfer):Bool;
    overload function Spawn():Bool;
    overload function Spawn(owner:sandbox.Connection):Bool;
    /** Become the network owner of this object. Note: whether you can take ownership of this object depends on the of this networked object. */
    function TakeOwnership():Bool;
}
