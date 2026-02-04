package sandbox;

@:native("Sandbox.NetFlags")
extern enum abstract NetFlags(UInt) {
    var Unreliable;
    var Reliable;
    var SendImmediate;
    var DiscardOnDelay;
    var HostOnly;
    var OwnerOnly;
    var UnreliableNoDelay;
}
