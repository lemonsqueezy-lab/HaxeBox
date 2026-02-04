package sandbox.services;

@:native("Sandbox.Services.ServiceApi")
extern class ServiceApi {
    function new(url:String):Void;
    var Package(default,never):sandbox.services.serviceapi.IPackageApi;
    var Version(default,never):sandbox.services.serviceapi.IVersionApi;
    var Stats(default,never):sandbox.services.serviceapi.IStatsApi;
    var Leaderboards(default,never):sandbox.services.serviceapi.ILeaderboardApi;
    var Achievements(default,never):sandbox.services.serviceapi.IAchievementApi;
    var Player(default,never):sandbox.services.serviceapi.IPlayerApi;
    var News(default,never):sandbox.services.serviceapi.INewsApi;
    var Notification(default,never):sandbox.services.serviceapi.INotificationApi;
    var Storage(default,never):sandbox.services.serviceapi.IStorageApi;
    var Utility(default,never):sandbox.services.serviceapi.IUtilityApi;
    function Dispose():Void;
    function SetApiKey(apiKey:String):Void;
}
