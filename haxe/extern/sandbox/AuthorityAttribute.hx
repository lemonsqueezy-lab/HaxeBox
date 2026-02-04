package sandbox;

/** Marks a method as being an RPC specifically targeted to the owner of the , or the host if the doesn't have an owner. The state of the object the RPC is called on will be up-to-date including its and any properties with the or attributes by the time the method is called on remote clients. The only except is any synchronized properties marked with which will generally only be received every network tick. */
@:native("Sandbox.AuthorityAttribute")
final extern class AuthorityAttribute {
    overload function new():Void;
    overload function new(permission:sandbox.NetPermission):Void;
    var Permission(default,default):sandbox.NetPermission;
    var Flags(default,default):sandbox.NetFlags;
    var TypeId(default,never):cs.system.Object;
}
