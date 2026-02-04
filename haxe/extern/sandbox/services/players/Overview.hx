package sandbox.services.players;

/** An overview of a player. Only available if their profile isn't set to private. */
@:native("Sandbox.Services.Players.Overview")
final extern class Overview {
    function new():Void;
    var Player(default,default):sandbox.services.players.Profile;
    var GamesPlayed(default,default):haxe.Int64;
    var TotalSessions(default,default):haxe.Int64;
    var SecondsPlayed(default,default):haxe.Int64;
    var Achievements(default,default):haxe.Int64;
    /** A json string representing how their avatar is dressed */
    var AvatarJson(default,default):String;
    var TotalComments(default,default):haxe.Int64;
    var TotalFavourites(default,default):haxe.Int64;
    var TotalReviews(default,default):haxe.Int64;
    var NegativeReviews(default,default):haxe.Int64;
    var PositiveReviews(default,default):haxe.Int64;
    var MostPlayed(default,default):sandbox.Package;
    var LatestPlayed(default,default):sandbox.Package;
    static function Get(steamid:sandbox.SteamId):system.threading.tasks.Task1<sandbox.services.players.Overview>;
}
