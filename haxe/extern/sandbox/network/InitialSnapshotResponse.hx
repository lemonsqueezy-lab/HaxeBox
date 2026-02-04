package sandbox.network;

@:native("Sandbox.Network.InitialSnapshotResponse")
final extern class InitialSnapshotResponse {
    var Snapshot(default,set):sandbox.network.SnapshotMsg;

    private inline function set_Snapshot(value:sandbox.network.SnapshotMsg):sandbox.network.SnapshotMsg {
        var __value:sandbox.network.SnapshotMsg = cast value;
        return untyped __cs__("{0}.Snapshot = {1}", this, __value);
    }

    var HandshakeId(default,set):system.Guid;

    private inline function set_HandshakeId(value:system.Guid):system.Guid {
        var __value:system.Guid = cast value;
        return untyped __cs__("{0}.HandshakeId = {1}", this, __value);
    }

}
