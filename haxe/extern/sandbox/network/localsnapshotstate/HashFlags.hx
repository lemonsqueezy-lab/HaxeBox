package sandbox.network.localsnapshotstate;

@:native("Sandbox.Network.LocalSnapshotState.HashFlags")
extern enum abstract HashFlags(Int) {
    var Default;
    var WithParentId;
    var WithNetworkFlags;
    var All;
}
