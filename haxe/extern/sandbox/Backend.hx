package sandbox;

@:native("Sandbox.Backend")
final extern class Backend {
    static var Package(default,never):sandbox.services.serviceapi.IPackageApi;
    static var Version(default,never):sandbox.services.serviceapi.IVersionApi;
    static var Stats(default,never):sandbox.services.serviceapi.IStatsApi;
    static var Leaderboards(default,never):sandbox.services.serviceapi.ILeaderboardApi;
    static var Account(default,never):sandbox.services.serviceapi.IAccountApi;
    static var Benchmarks(default,never):sandbox.services.serviceapi.IBenchmarkApi;
    static var Achievements(default,never):sandbox.services.serviceapi.IAchievementApi;
    static var Players(default,never):sandbox.services.serviceapi.IPlayerApi;
    static var News(default,never):sandbox.services.serviceapi.INewsApi;
    static var Notifications(default,never):sandbox.services.serviceapi.INotificationApi;
    static var Storage(default,never):sandbox.services.serviceapi.IStorageApi;
    static var Utility(default,never):sandbox.services.serviceapi.IUtilityApi;
    static function Initialize(httpHandler:system.net.http.DelegatingHandler, url:String):Void;
}
