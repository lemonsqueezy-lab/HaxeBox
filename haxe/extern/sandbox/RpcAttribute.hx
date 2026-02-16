package sandbox;

/** Marks a method as being an RPC. This means that it can be called over the network. */
@:native("Sandbox.RpcAttribute")
extern class RpcAttribute extends system.Attribute {
    var Flags(default,default):sandbox.NetFlags;
}
