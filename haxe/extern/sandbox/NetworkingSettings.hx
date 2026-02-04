package sandbox;

/** A class that holds all configured networking settings for a game. This is serialized as a config and shared from the server to the client. */
@:native("Sandbox.NetworkingSettings")
extern class NetworkingSettings {
    function new():Void;
    /** Whether to disband the game lobby when the host leaves. */
    var DestroyLobbyWhenHostLeaves(default,default):Bool;
    /** Whether to periodically switch to the best host candidate. Candidates are scored based on their average ping and connection quality to all other peers. */
    var AutoSwitchToBestHost(default,default):Bool;
    /** By default, can clients create objects. This can be changed per connection after join. */
    var ClientsCanSpawnObjects(default,default):Bool;
    /** By default, can clients refresh objects. This can be changed per connection after join. */
    var ClientsCanRefreshObjects(default,default):Bool;
    /** By default, can clients destroy objects. This can be changed per connection after join. */
    var ClientsCanDestroyObjects(default,default):Bool;
    /** The frequency at which the network system will send updates to clients. Higher is better but you probably want to stay in the 10-60 range. */
    var UpdateRate(default,default):Single;
    var Guid(default,default):system.Guid;
    var Version(default,never):Int;
}
