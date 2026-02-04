package sandbox.services.leaderboards;

@:native("Sandbox.Services.Leaderboards.Entry")
final extern class Entry {
    var Me(default,never):Bool;
    var Rank(default,never):haxe.Int64;
    var Value(default,never):Float;
    var FormattedValue(default,never):String;
    var SteamId(default,never):haxe.Int64;
    var DisplayName(default,never):String;
}
