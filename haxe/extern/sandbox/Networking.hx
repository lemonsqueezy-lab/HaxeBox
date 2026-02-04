package sandbox;

/** Global manager to hold and tick the singleton instance of NetworkSystem. */
@:native("Sandbox.Networking")
final extern class Networking {
    /** The name of the server you are currently connected to. */
    static var ServerName(default,default):String;
    /** The name of the map being used on the server you're connected to. */
    static var MapName(default,never):String;
    /** The maximum number of players allowed on the server you're connected to. */
    static var MaxPlayers(default,never):Int;
    /** Get the latest host stats such as bandwidth used and the current frame rate. */
    static var HostStats(default,never):sandbox.network.HostStats;
    /** True if we can be considered the host of this session. Either we're not connected to a server, or we are host of a server. */
    static var IsHost(default,never):Bool;
    /** True if we're currently connected to a server, and we are not the host */
    static var IsClient(default,never):Bool;
    /** True if we're currently connecting to the server */
    static var IsConnecting(default,never):Bool;
    /** True if we're currently connecting to the server */
    static var IsActive(default,never):Bool;
    /** The connection of the current network host. */
    static var HostConnection(default,never):sandbox.Connection;
    /** A list of connections that are currently on this server. If you're not on a server this will return only one connection (Connection.Local). Some games restrict the connection list - in which case you will get an empty list. */
    static var Connections(default,never):system.collections.generic.IReadOnlyList<sandbox.Connection>;
    /** Will try to determine the right method for connection, and then try to connect. */
    static overload function Connect(target:String):Void;
    static overload function Connect(steamid:system.UInt64):Void;
    /** Will create a new lobby. */
    static overload function CreateLobby():Void;
    static overload function CreateLobby(config:sandbox.network.LobbyConfig):Void;
    /** Disconnect from current multiplayer session. */
    static function Disconnect():Void;
    static function FindConnection(id:system.Guid):sandbox.Connection;
    /** Get data about the current server or lobby. This data can be used for filtering when querying lobbies. */
    static function GetData(key:String, defaultValue:String):String;
    /** Try to join the best lobby. Return true on success. */
    static function JoinBestLobby(ident:String):system.threading.tasks.Task1<Bool>;
    /** Get all lobbies for the current game. */
    static overload function QueryLobbies(ct:system.threading.CancellationToken):system.threading.tasks.Task1<system.collections.generic.List<sandbox.network.LobbyInformation>>;
    static overload function QueryLobbies(gameIdent:String, ct:system.threading.CancellationToken):system.threading.tasks.Task1<system.collections.generic.List<sandbox.network.LobbyInformation>>;
    static overload function QueryLobbies(gameIdent:String, mapIdent:String, ct:system.threading.CancellationToken):system.threading.tasks.Task1<system.collections.generic.List<sandbox.network.LobbyInformation>>;
    static overload function QueryLobbies(filters:system.collections.generic.Dictionary<String,String>, includeServers:Bool, ct:system.threading.CancellationToken):system.threading.tasks.Task1<system.collections.generic.List<sandbox.network.LobbyInformation>>;
    /** Set data about the current server or lobby. Other players can query this when searching for a game. Note: for now, try to keep the key and value as short as possible, Steam enforce a character limit on server tags, so it could be possible to reach that limit when running a Dedicated Server. In the future we'll store this stuff on our backend, so that won't be a problem. */
    static function SetData(key:String, value:String):Void;
    /** Will try to connect to a server. Will return false if failed to connect. */
    static function TryConnectSteamId(steamId:sandbox.SteamId):system.threading.tasks.Task1<Bool>;
}
