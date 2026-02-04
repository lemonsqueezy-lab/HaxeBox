package sandbox.services.leaderboards;

@:native("Sandbox.Services.Leaderboards.Board")
extern class Board {
    function new(package:String, name:String):Void;
    /** The steamid to get information about. If unset then this defaults to the current player. */
    var TargetSteamId(default,default):haxe.Int64;
    /** The maximum entries to respond with. */
    var MaxEntries(default,default):Int;
    /** global, country, friends */
    var Group(default,default):String;
    /** The group name of this board. For example, "Global" for global, "Friends" for friends. */
    var Title(default,never):String;
    /** The display name of this board, which was set in the backend. */
    var DisplayName(default,default):String;
    /** The description of this board, which was set in the backend. */
    var Description(default,default):String;
    /** The total number of chart entries for this board. */
    var TotalEntries(default,never):haxe.Int64;
    /** The unit type chosen for this board */
    var Unit(default,never):String;
    /** The group of entries for this board. This is usually the entries that surround the TargetSteamId. */
    var Entries(default,default):Array<sandbox.services.leaderboards.Entry>;
    function Refresh(cancellation:system.threading.CancellationToken):system.threading.tasks.Task;
}
