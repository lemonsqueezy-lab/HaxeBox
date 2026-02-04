package sandbox.storage;

@:native("Sandbox.Storage.SortOrder")
extern enum abstract SortOrder(Int) {
    var RankedByVote;
    var RankedByPublicationDate;
    var AcceptedForGameRankedByAcceptanceDate;
    var RankedByTrend;
    var FavoritedByFriendsRankedByPublicationDate;
    var CreatedByFriendsRankedByPublicationDate;
    var RankedByNumTimesReported;
    var CreatedByFollowedUsersRankedByPublicationDate;
    var NotYetRated;
    var RankedByTotalVotesAsc;
    var RankedByVotesUp;
    var RankedByTextSearch;
    var RankedByTotalUniqueSubscriptions;
    var RankedByPlaytimeTrend;
    var RankedByTotalPlaytime;
    var RankedByAveragePlaytimeTrend;
    var RankedByLifetimeAveragePlaytime;
    var RankedByPlaytimeSessionsTrend;
    var RankedByLifetimePlaytimeSessions;
    var RankedByLastUpdatedDate;
}
