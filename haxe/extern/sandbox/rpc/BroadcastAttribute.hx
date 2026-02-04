package sandbox.rpc;

/** Marks a method as being an RPC. It will be called for everyone. */
@:native("Sandbox.Rpc.BroadcastAttribute")
extern class BroadcastAttribute {
    function new(flags:sandbox.NetFlags):Void;
    var Flags(default,default):sandbox.NetFlags;
    var TypeId(default,never):cs.system.Object;
}
