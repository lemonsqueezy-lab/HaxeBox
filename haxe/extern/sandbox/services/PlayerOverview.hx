package sandbox.services;

@:native("Sandbox.Services.PlayerOverview")
extern class PlayerOverview {
    function new():Void;
    var Player(default,default):sandbox.services.Player;
    var GamesPlayed(default,default):haxe.Int64;
    var TotalSessions(default,default):haxe.Int64;
    var SecondsPlayed(default,default):haxe.Int64;
    var Achievements(default,default):haxe.Int64;
    var TotalFavourites(default,default):haxe.Int64;
    var TotalReviews(default,default):haxe.Int64;
    var NegativeReviews(default,default):haxe.Int64;
    var PositiveReviews(default,default):haxe.Int64;
    var Avatar(default,default):String;
    var LatestReviews(default,default):Array<sandbox.services.PackageReviewDto>;
    var MostPlayed(default,default):sandbox.services.PackageWrapMinimal;
    var LatestPlayed(default,default):sandbox.services.PackageWrapMinimal;
}
