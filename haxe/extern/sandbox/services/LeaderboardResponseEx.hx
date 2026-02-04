package sandbox.services;

@:native("Sandbox.Services.LeaderboardResponseEx")
extern class LeaderboardResponseEx {
    function new():Void;
    var Stat(default,default):String;
    var TotalEntries(default,default):haxe.Int64;
    var Entries(default,default):Array<sandbox.services.leaderboardresponseex.Entry>;
    var Query(default,default):String;
    var DateDescription(default,default):String;
}
