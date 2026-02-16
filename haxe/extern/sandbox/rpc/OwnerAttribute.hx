package sandbox.rpc;

/** Marks a method as being an RPC. It will only be called on owner of this object. */
@:native("Sandbox.Rpc.OwnerAttribute")
extern class OwnerAttribute extends sandbox.RpcAttribute {
    function new(flags:sandbox.NetFlags):Void;
}
