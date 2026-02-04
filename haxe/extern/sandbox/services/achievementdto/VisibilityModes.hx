package sandbox.services.achievementdto;

@:native("Sandbox.Services.AchievementDto.VisibilityModes")
extern enum abstract VisibilityModes(Int) {
    var Visible;
    var VisibleWhenUnlocked;
    var Hidden;
}
