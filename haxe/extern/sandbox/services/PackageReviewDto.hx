package sandbox.services;

@:native("Sandbox.Services.PackageReviewDto")
extern class PackageReviewDto {
    function new():Void;
    var Player(default,default):sandbox.services.Player;
    var Content(default,default):String;
    var Score(default,default):sandbox.services.ReviewScore;
    var Package(default,default):sandbox.services.PackageWrapMinimal;
    var SecondsPlayed(default,default):Int;
    var Created(default,default):system.DateTimeOffset;
    var Updated(default,default):system.DateTimeOffset;
}
