package sandbox.services.leaderboardquery;

@:native("Sandbox.Services.LeaderboardQuery.DateType")
extern enum abstract DateType(Int) {
    var None;
    var Year;
    var Month;
    var Week;
    var Day;
}
