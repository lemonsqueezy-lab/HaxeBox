package sandbox.network;

@:native("Sandbox.Network.LobbyPrivacy")
extern enum abstract LobbyPrivacy(Int) {
    var Public;
    var Private;
    var FriendsOnly;
}
