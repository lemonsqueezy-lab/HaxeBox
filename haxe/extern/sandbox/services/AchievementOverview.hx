package sandbox.services;

/** Activity Feed */
@:native("Sandbox.Services.AchievementOverview")
final extern class AchievementOverview {
    function new():Void;
    var Package(default,default):sandbox.Package;
    var Achievements(default,default):Array<sandbox.Achievement>;
    var LastSeen(default,default):system.DateTimeOffset;
    var Unlocked(default,default):Int;
    var Score(default,default):Int;
    var Total(default,default):Int;
    var TotalScore(default,default):Int;
}
