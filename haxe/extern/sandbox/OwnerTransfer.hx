package sandbox;

/** Specifies who can control ownership of a networked object. */
@:native("Sandbox.OwnerTransfer")
extern enum abstract OwnerTransfer(Int) {
    var Takeover;
    var Fixed;
    var Request;
}
