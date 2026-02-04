package sandbox.storage;

/** The results of a Steam Workshop query */
@:native("Sandbox.Storage.QueryResult")
extern class QueryResult {
    function new():Void;
    var ResultCount(default,default):Int;
    var TotalCount(default,default):Int;
    var NextCursor(default,default):String;
    var Items(default,default):system.collections.generic.List<sandbox.storage.QueryItem>;
    /** Get the next set of results from the query. Returns null if none. */
    function GetNextResults(token:system.threading.CancellationToken):system.threading.tasks.Task1<sandbox.storage.QueryResult>;
    /** Returns true if there are more results to be fetched */
    function HasMoreResults():Bool;
}
