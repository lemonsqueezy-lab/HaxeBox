package sandbox.rpc;

/** Marks a method as being an RPC. It will be called for everyone. */
@:native("Sandbox.Rpc.BroadcastAttribute")
extern class BroadcastAttribute extends sandbox.RpcAttribute {
    function new(flags:sandbox.NetFlags):Void;
}
