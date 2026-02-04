package sandbox.services.serviceapi;

@:native("Sandbox.Services.ServiceApi.IStatsApi")
extern class IStatsApi {
    function GetBookmark(id:String):system.threading.tasks.Task1<String>;
    function GetGlobalPackageStats(packageIdent:String):system.threading.tasks.Task1<Array<sandbox.services.GlobalStat>>;
    function GetPlayerPackageStats(packageIdent:String, steamid:haxe.Int64):system.threading.tasks.Task1<Array<sandbox.services.PlayerStat>>;
    function Submit(data:cs.system.Object):system.threading.tasks.Task;
}
