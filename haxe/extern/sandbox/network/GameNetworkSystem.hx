package sandbox.network;

/** An instance of this is created by the NetworkSystem when a server is joined, or created. You should not try to create this manually. */
@:native("Sandbox.Network.GameNetworkSystem")
extern class GameNetworkSystem {
    function new():Void;
    /** True if we can be considered the host of this session. Either we're not connected to a server, or we are and we are the host. */
    static var IsHost(default,never):Bool;
    /** True if we're connected to a server and not the host. */
    static var IsClient(default,never):Bool;
    /** True if we're currently connecting to the server */
    static var IsConnecting(default,never):Bool;
    /** True if we're currently connected etc */
    static var IsActive(default,never):Bool;
    function AcceptConnection(channel:sandbox.Connection, reason:String):Bool;
    overload function AddHandler<T>(handler:system.Action2<T,sandbox.Connection>):Void;
    overload function AddHandler<T>(handler:system.Action3<T,sandbox.Connection,system.Guid>):Void;
    overload function AddHandler<T>(handler:system.Func4<T,sandbox.Connection,system.Guid,system.threading.tasks.Task>):Void;
    function Broadcast<T>(obj:T, filter:Null<sandbox.connection.Filter>):Void;
    function BroadcastRaw(msg:sandbox.ByteStream, filter:Null<sandbox.connection.Filter>):Void;
    static overload function Connect(target:String):Void;
    static overload function Connect(steamid:system.UInt64):Void;
    static function CreateLobby():Void;
    static function Disconnect():Void;
    function Dispose():Void;
    function GetMountedVPKs(source:sandbox.Connection, msg:sandbox.network.MountedVPKsResponse):Void;
    function GetSnapshot(source:sandbox.Connection, msg:sandbox.network.SnapshotMsg):Void;
    function MountVPKs(source:sandbox.Connection, msg:sandbox.network.MountedVPKsResponse):system.threading.tasks.Task;
    /** The host left the server and you are now in charge. */
    function OnBecameHost(previousHost:sandbox.Connection):Void;
    /** A client has connected to the server but hasn't fully finished joining yet. */
    function OnConnected(client:sandbox.Connection):Void;
    /** The current host has been changed. */
    function OnHostChanged(previousHost:sandbox.Connection, newHost:sandbox.Connection):Void;
    /** Called when the network system should handle initialization. */
    function OnInitialize():Void;
    /** Fully joined the server. Can be called when changing the map too. The game should usually create some object for the player to control here. */
    function OnJoined(client:sandbox.Connection):Void;
    /** A client has disconnected from the server. */
    function OnLeave(client:sandbox.Connection):Void;
    /** Allows to push some kind of scope when reading network messages. This is useful if you need to adjust Time.Now etc. */
    function Push():system.IDisposable;
    static function QueryLobbies():system.threading.tasks.Task1<system.collections.generic.List<sandbox.network.LobbyInformation>>;
    function Send<T>(connectionId:system.Guid, obj:T):Void;
    function SetSnapshotAsync(data:sandbox.network.SnapshotMsg):system.threading.tasks.Task;
    /** Called every frame */
    @:protected function Tick():Void;
    static function TryConnectSteamId(steamId:system.UInt64):system.threading.tasks.Task1<Bool>;
}
