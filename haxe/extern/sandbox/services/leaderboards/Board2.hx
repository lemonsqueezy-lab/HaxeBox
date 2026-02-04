package sandbox.services.leaderboards;

@:native("Sandbox.Services.Leaderboards.Board2")
extern class Board2 {
    function new(package:String, name:String):Void;
    var Stat(default,default):String;
    /** The steamid to get information about. If unset then this defaults to the current player. */
    var TargetSteamId(default,default):haxe.Int64;
    /** The maximum entries to respond with. */
    var MaxEntries(default,default):Int;
    /** The offset to start at. If less than 0, we will start from the bottom. */
    var Offset(default,default):Int;
    /** The total number of chart entries for this board. */
    var TotalEntries(default,never):haxe.Int64;
    /** If you are restructing by time period, this is the name of the period */
    var TimePeriodDescription(default,never):String;
    /** The group of entries for this board. This is usually the entries that surround the TargetSteamId. */
    var Entries(default,default):Array<sandbox.services.leaderboards.board2.Entry>;
    /** Center the results on you, show the surrounding results with you in the middle. */
    function CenterOnMe():Void;
    /** Center the results on this steamid, show the surrounding results with this in the middle. */
    function CenterOnSteamId(steamid:haxe.Int64):Void;
    function FilterByDay():Void;
    function FilterByMonth():Void;
    function FilterByNone():Void;
    function FilterByWeek():Void;
    function FilterByYear():Void;
    /** If they have any results, include these steamids in the results - regardless of their position. */
    function IncludeSteamIds(steamids:Array<haxe.Int64>):Void;
    function Refresh(cancellation:system.threading.CancellationToken):system.threading.tasks.Task;
    function SetAggregationAvg():Void;
    function SetAggregationLast():Void;
    function SetAggregationMax():Void;
    function SetAggregationMin():Void;
    function SetAggregationSum():Void;
    function SetCountryAuto():Void;
    function SetCountryCode(countryCode:String):Void;
    function SetDatePeriod(dateTime:system.DateTime):Void;
    function SetFriendsOnly(friendsOnly:Bool):Void;
    function SetSortAscending():Void;
    function SetSortDescending():Void;
}
