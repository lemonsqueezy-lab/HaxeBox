package sandbox;

/** A connection, usually to a server or a client. */
@:native("Sandbox.Connection")
extern class Connection {
    /** This connection's unique identifier. */
    @:protected
    var Id(default,null):system.Guid;
    /** Can this connection spawn networked objects? */
    var CanSpawnObjects(default,default):Bool;
    /** Can this connection refresh networked objects that they own? */
    var CanRefreshObjects(default,default):Bool;
    /** Can this connection destroy networked objects they own? */
    var CanDestroyObjects(default,default):Bool;
    var Latency(default,never):Single;
    var Name(default,never):String;
    var Time(default,never):Single;
    var Address(default,never):String;
    var IsHost(default,never):Bool;
    /** True if this channel is still currently connecting. */
    var IsConnecting(default,never):Bool;
    /** True if this channel is fully connnected and fully logged on. */
    var IsActive(default,never):Bool;
    /** How many messages have been sent to this connection? */
    var MessagesSent(default,never):Int;
    /** How many messages have been received from this connection? */
    var MessagesRecieved(default,never):Int;
    /** Get stats about this connection such as bandwidth usage and how many packets are being sent and received. */
    var Stats(default,never):sandbox.network.ConnectionStats;
    /** The ping of this connection (in milliseconds.) */
    var Ping(default,never):Single;
    var DisplayName(default,never):String;
    var SteamId(default,never):sandbox.SteamId;
    /** The Id of the party that this user is a part of. This can be used to compare to other users to group them into parties. */
    var PartyId(default,never):sandbox.SteamId;
    var ConnectionTime(default,never):system.DateTimeOffset;
    /** This is a "fake" connection for the local player. It is passed to RPCs when calling them locally etc. */
    static var Local(default,never):sandbox.Connection;
    /** A list of connections that are currently on this server. If you're not on a server this will return only one connection (Connection.Local). Some games restrict the connection list - in which case you will get an empty list. */
    static var All(default,never):system.collections.generic.IReadOnlyList<sandbox.Connection>;
    /** The connection of the current network host. */
    static var Host(default,never):sandbox.Connection;
    /** Calculate the closest distance (squared) to a position based on the Pvs sources from this . */
    function DistanceSquared(position:Vector3):Single;
    /** Action is currently pressed down for this . */
    function Down(action:String):Bool;
    /** Find a for a Connection Id. */
    static function Find(id:system.Guid):sandbox.Connection;
    function GetUserData(key:String):String;
    /** Get whether this connection has a specific permission. */
    function HasPermission(permission:String):Bool;
    /** Kick this from the server. Only the host can kick clients. */
    function Kick(reason:String):Void;
    /** Action was pressed for this within the current update context. */
    function Pressed(action:String):Bool;
    /** Action was released for this within the current update context. */
    function Released(action:String):Bool;
    /** Log a message to the console for this connection. */
    function SendLog(level:sandbox.LogLevel, message:String):Void;
    function SendMessage<T>(t:T):Void;
    function SendRequest<T>(t:T):system.threading.tasks.Task1<cs.system.Object>;
    function SendResponse<T>(requestId:system.Guid, t:T):Void;
    function ToString():String;
}
