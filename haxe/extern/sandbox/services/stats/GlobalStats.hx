package sandbox.services.stats;

@:native("Sandbox.Services.Stats.GlobalStats")
final extern class GlobalStats {
    /** True if we're currently fetching new stats */
    var IsRefreshing(default,never):Bool;
    /** The UTC datetime when we last fetched new stats */
    var LastRefresh(default,never):system.DateTime;
    var Item(default,never):sandbox.services.stats.GlobalStat;
    /** Make a copy of this class. Allows you to store the stats from a point in time. */
    function Copy():sandbox.services.stats.GlobalStats;
    /** Get a stat by name. Will return an empty stat if not found */
    function Get(name:String):sandbox.services.stats.GlobalStat;
    function GetEnumerator():system.collections.generic.IEnumerator<sandbox.services.stats.GlobalStat>;
    /** Refresh these global stats - grab the latest values */
    function Refresh():system.threading.tasks.Task;
    function TryGet(name:String, stat:sandbox.services.stats.GlobalStat):Bool;
}
