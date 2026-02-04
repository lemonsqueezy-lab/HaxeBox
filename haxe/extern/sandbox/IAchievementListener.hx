package sandbox;

@:native("Sandbox.IAchievementListener")
extern class IAchievementListener {
    function OnAchievementUnlocked(data:sandbox.iachievementlistener.UnlockDescription):Void;
}
