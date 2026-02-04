package sandbox.services.serviceapi;

@:native("Sandbox.Services.ServiceApi.ILeaderboardApi")
extern class ILeaderboardApi {
    function Query(query:sandbox.services.LeaderboardQuery):system.threading.tasks.Task1<sandbox.services.LeaderboardResponseEx>;
    function QueryLegacy(package:String, leaderboard:String, steamid:haxe.Int64, mode:String, take:Int):system.threading.tasks.Task1<sandbox.services.LeaderboardResponseLegacy>;
}
