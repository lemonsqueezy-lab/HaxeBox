package sandbox.storage;

/** Query the Steam Workshop for items */
@:native("Sandbox.Storage.Query")
extern class Query {
    function new():Void;
    /** Tags that the item must have all of to be included in results. */
    var TagsRequired(default,default):system.collections.generic.HashSet<String>;
    /** Tags that the item must not have any of to be included in results. */
    var TagsExcluded(default,default):system.collections.generic.HashSet<String>;
    /** KeyValues that the item must match to be included in results. */
    var KeyValues(default,default):system.collections.generic.Dictionary<String,String>;
    /** Search Text */
    var SearchText(default,default):String;
    /** Max Cache Age in seconds */
    var MaxCacheAge(default,default):Int;
    /** Sort Order */
    var SortOrder(default,default):sandbox.storage.SortOrder;
    /** Number of days to consider for rank trend calculations */
    var RankTrendDays(default,default):Int;
    /** Run the query */
    function Run(token:system.threading.CancellationToken):system.threading.tasks.Task1<sandbox.storage.QueryResult>;
}
