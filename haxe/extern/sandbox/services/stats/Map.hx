package sandbox.services.stats;

/** Stats for the current map */
@:native("Sandbox.Services.Stats.Map")
final extern class Map {
    /** Get the stats for the local player */
    static var Local(default,never):sandbox.services.stats.PlayerStats;
    /** Get the global stats */
    static var Global(default,never):sandbox.services.stats.GlobalStats;
    /** Get a stat for the local player */
    static function GetGlobal(name:String):sandbox.services.stats.GlobalStat;
    /** Get a stat for the local player */
    static function GetLocal(name:String):sandbox.services.stats.PlayerStat;
    /** Add a stat value for this package */
    static function SetValue(name:String, amount:Float, data:system.collections.generic.Dictionary<String,cs.system.Object>):Void;
}
