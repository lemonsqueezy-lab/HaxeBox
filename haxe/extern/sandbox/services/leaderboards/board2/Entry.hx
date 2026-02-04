package sandbox.services.leaderboards.board2;

@:native("Sandbox.Services.Leaderboards.Board2.Entry")
final extern class Entry {
    var Rank(default,never):haxe.Int64;
    var Value(default,never):Float;
    var SteamId(default,never):haxe.Int64;
    var CountryCode(default,never):String;
    var DisplayName(default,never):String;
    var Timestamp(default,never):system.DateTimeOffset;
    var Data(default,never):system.collections.generic.Dictionary<String,cs.system.Object>;
}
