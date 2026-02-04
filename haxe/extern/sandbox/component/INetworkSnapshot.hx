package sandbox.component;

/** When implemented on a or it can read and write data to and from a network snapshot. */
@:native("Sandbox.Component.INetworkSnapshot")
extern class INetworkSnapshot {
    function ReadSnapshot(reader:sandbox.ByteStream):Void;
    function WriteSnapshot(writer:sandbox.ByteStream):Void;
}
