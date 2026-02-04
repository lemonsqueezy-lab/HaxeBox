package sandbox;

/** Specifies what happens when the owner of a networked object disconnects. */
@:native("Sandbox.NetworkOrphaned")
extern enum abstract NetworkOrphaned(Int) {
    var Destroy;
    var Host;
    var Random;
    var ClearOwner;
}
