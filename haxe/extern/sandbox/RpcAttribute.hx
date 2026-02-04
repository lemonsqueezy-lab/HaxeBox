package sandbox;

/** Marks a method as being an RPC. This means that it can be called over the network. */
@:native("Sandbox.RpcAttribute")
extern class RpcAttribute {
    var Flags(default,default):sandbox.NetFlags;
    var TypeId(default,never):cs.system.Object;
}
