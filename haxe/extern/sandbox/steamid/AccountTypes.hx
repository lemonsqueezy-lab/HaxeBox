package sandbox.steamid;

/** The different types of Steam accounts. */
@:native("Sandbox.SteamId.AccountTypes")
extern enum abstract AccountTypes(UInt) {
    var Invalid;
    var Individual;
    var Multiseat;
    var GameServer;
    var AnonGameServer;
    var Pending;
    var ContentServer;
    var Clan;
    var Lobby;
    var ConsoleUser;
    var AnonUser;
}
