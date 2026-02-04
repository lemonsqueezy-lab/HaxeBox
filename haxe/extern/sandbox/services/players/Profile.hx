package sandbox.services.players;

/** Player profile */
@:native("Sandbox.Services.Players.Profile")
final extern class Profile {
    function new():Void;
    var Id(default,default):sandbox.SteamId;
    var Name(default,default):String;
    var Url(default,default):String;
    var Online(default,default):Bool;
    var Private(default,default):Bool;
    var Score(default,default):Int;
    var Avatar(default,never):String;
    var IsFriend(default,never):Bool;
    static var Local(default,never):sandbox.services.players.Profile;
    static function Get(steamid:sandbox.SteamId):system.threading.tasks.Task1<sandbox.services.players.Profile>;
}
