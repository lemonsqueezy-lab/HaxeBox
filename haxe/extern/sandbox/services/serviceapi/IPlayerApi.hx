package sandbox.services.serviceapi;

@:native("Sandbox.Services.ServiceApi.IPlayerApi")
extern class IPlayerApi {
    function Get(steamid:haxe.Int64):system.threading.tasks.Task1<sandbox.services.Player>;
    function GetAchievementProgress(steamid:haxe.Int64, take:Int):system.threading.tasks.Task1<Array<sandbox.services.PlayerAchievementProgress>>;
    function GetFeed(steamid:haxe.Int64, take:Int):system.threading.tasks.Task1<Array<sandbox.services.PlayerFeedEntry>>;
    function GetOverview(steamid:haxe.Int64):system.threading.tasks.Task1<sandbox.services.PlayerOverview>;
}
