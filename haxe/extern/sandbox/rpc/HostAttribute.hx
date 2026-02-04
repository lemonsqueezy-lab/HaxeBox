package sandbox.rpc;

/** Marks a method as being an RPC. It will only be called on the host. */
@:native("Sandbox.Rpc.HostAttribute")
extern class HostAttribute {
    function new(flags:sandbox.NetFlags):Void;
    var Flags(default,default):sandbox.NetFlags;
    var TypeId(default,never):cs.system.Object;
}
