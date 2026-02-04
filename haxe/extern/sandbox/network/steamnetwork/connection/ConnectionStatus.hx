package sandbox.network.steamnetwork.connection;

@:native("Sandbox.Network.SteamNetwork.Connection.ConnectionStatus")
extern enum abstract ConnectionStatus(Int) {
    var None;
    var Connecting;
    var FindingRoute;
    var Connected;
    var ClosedByPeer;
    var ProblemDetectedLocally;
    var FinWait;
    var Linger;
    var Dead;
}
