package sandbox.services.leaderboardquery;

@:native("Sandbox.Services.LeaderboardQuery.AggregationType")
extern enum abstract AggregationType(Int) {
    var Sum;
    var Max;
    var Min;
    var Last;
    var Avg;
}
