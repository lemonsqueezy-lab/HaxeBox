package sandbox.services;

@:native("Sandbox.Services.PlayerAchievementProgress")
extern class PlayerAchievementProgress {
    function new():Void;
    var Package(default,default):sandbox.services.PackageWrapMinimal;
    var Achievements(default,default):Array<sandbox.services.AchievementDto>;
    var LastSeen(default,default):system.DateTimeOffset;
    var Unlocked(default,default):Int;
    var Score(default,default):Int;
    var Total(default,default):Int;
    var TotalScore(default,default):Int;
}
