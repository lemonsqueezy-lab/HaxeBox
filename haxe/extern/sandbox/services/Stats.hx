package sandbox.services;

/** Allows access to stats for the current game. Stats are defined by the game's author and can be used to track anything from player actions to performance metrics. They are how you submit data to leaderboards. */
@:native("Sandbox.Services.Stats")
final extern class Stats {
    /** Get the global stats for the calling package */
    static var Global(default,never):sandbox.services.stats.GlobalStats;
    /** Get the global stats for the calling package */
    static var LocalPlayer(default,never):sandbox.services.stats.PlayerStats;
    /** Send any pending stats to the backend. Don't wait for confirmation of ingestiom, fire and forget. */
    static function Flush():Void;
    /** Send any pending stats to the backend, will wait until they're available for query before finishing. */
    static function FlushAndWaitAsync(token:system.threading.CancellationToken):system.threading.tasks.Task;
    /** Send any pending stats to the backend. Don't wait for confirmation of ingestiom, fire and forget. */
    static function FlushAsync(token:system.threading.CancellationToken):system.threading.tasks.Task;
    /** Get the global stats for this package */
    static function GetGlobalStats(packageIdent:String):sandbox.services.stats.GlobalStats;
    /** Get the global stats for this package */
    static function GetLocalPlayerStats(packageIdent:String):sandbox.services.stats.PlayerStats;
    /** Get the stats for this package */
    static function GetPlayerStats(packageIdent:String, steamid:haxe.Int64):sandbox.services.stats.PlayerStats;
    static overload function Increment(name:String, amount:Float):Void;
    static overload function Increment(name:String, amount:Float, data:system.collections.generic.Dictionary<String,cs.system.Object>):Void;
    static overload function Increment(name:String, amount:Float, context:String, data:cs.system.Object):Void;
    static overload function SetValue(name:String, amount:Float, data:system.collections.generic.Dictionary<String,cs.system.Object>):Void;
    static overload function SetValue(name:String, amount:Float, context:String, data:cs.system.Object):Void;
}
