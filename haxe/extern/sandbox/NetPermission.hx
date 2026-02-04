package sandbox;

/** Specifies who can invoke an action over the network. */
@:native("Sandbox.NetPermission")
extern enum abstract NetPermission(Int) {
    var Anyone;
    var HostOnly;
    var OwnerOnly;
}
