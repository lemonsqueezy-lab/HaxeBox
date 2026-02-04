package sandbox.services.findpackagequery;

@:native("Sandbox.Services.FindPackageQuery.SortMode")
extern enum abstract SortMode(Int) {
    var Updated;
    var Popular;
    var Friends;
    var Created;
    var Random;
    var Trending;
    var ThumbsUp;
    var ThumbsDown;
    var Favourites;
    var InCollections;
    var Used;
    var RankDay;
    var RankWeek;
    var RankMonth;
    var Spawns;
    var SpawnsDay;
    var SpawnsWeek;
    var SpawnsMonth;
    var PlayersNow;
    var None;
}
