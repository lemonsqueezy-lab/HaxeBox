package sandbox.services;

@:native("Sandbox.Services.Leaderboards")
final extern class Leaderboards {
    static function Get(name:String):sandbox.services.leaderboards.Board;
    static overload function GetFromStat(statName:String):sandbox.services.leaderboards.Board2;
    static overload function GetFromStat(packageIdent:String, statName:String):sandbox.services.leaderboards.Board2;
}
