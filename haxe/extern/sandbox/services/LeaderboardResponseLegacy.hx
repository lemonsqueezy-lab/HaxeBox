package sandbox.services;

@:native("Sandbox.Services.LeaderboardResponseLegacy")
extern class LeaderboardResponseLegacy {
    function new():Void;
    var Title(default,default):String;
    var DisplayName(default,default):String;
    var Description(default,default):String;
    var Unit(default,default):String;
    var TotalEntries(default,default):haxe.Int64;
    var Entries(default,default):Array<sandbox.services.leaderboardresponselegacy.Entry>;
}
