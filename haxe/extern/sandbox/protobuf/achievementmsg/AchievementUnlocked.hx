package sandbox.protobuf.achievementmsg;

@:native("Sandbox.Protobuf.AchievementMsg.AchievementUnlocked")
extern class AchievementUnlocked {
    function new():Void;
    static var MessageIdent(default,never):Int;
    var Title(default,default):String;
    var Description(default,default):String;
    var Icon(default,default):String;
    var ScoreAdded(default,default):Int;
    var PackageScore(default,default):Int;
    var PlayerScore(default,default):Int;
    var PackageUnlocks(default,default):Int;
    var PlayerUnlocks(default,default):Int;
}
