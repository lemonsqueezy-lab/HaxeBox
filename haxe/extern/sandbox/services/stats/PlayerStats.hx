package sandbox.services.stats;

@:native("Sandbox.Services.Stats.PlayerStats")
final extern class PlayerStats {
    /** True if we're currently fetching new stats */
    var IsRefreshing(default,never):Bool;
    /** The UTC datetime when we last fetched new stats */
    var LastRefresh(default,never):system.DateTime;
    var Item(default,never):sandbox.services.stats.PlayerStat;
    /** Make a copy of this class. Allows you to store the stats from a point in time. */
    function Copy():sandbox.services.stats.PlayerStats;
    /** Get a stat by name. Will return an empty stat if not found */
    function Get(name:String):sandbox.services.stats.PlayerStat;
    function GetEnumerator():system.collections.generic.IEnumerator<sandbox.services.stats.PlayerStat>;
    /** Refresh these global stats - grab the latest values */
    function Refresh():system.threading.tasks.Task;
    function TryGet(name:String, stat:sandbox.services.stats.PlayerStat):Bool;
}
