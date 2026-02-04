package sandbox.services.leaderboardresponselegacy;

@:native("Sandbox.Services.LeaderboardResponseLegacy.Entry")
final extern class Entry {
    var Me(default,set):Bool;

    private inline function set_Me(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.Me = {1}", this, __value);
    }

    var Rank(default,set):haxe.Int64;

    private inline function set_Rank(value:haxe.Int64):haxe.Int64 {
        var __value:haxe.Int64 = cast value;
        return untyped __cs__("{0}.Rank = {1}", this, __value);
    }

    var Value(default,set):Float;

    private inline function set_Value(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.Value = {1}", this, __value);
    }

    var ValueString(default,set):String;

    private inline function set_ValueString(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.ValueString = {1}", this, __value);
    }

    var SteamId(default,set):haxe.Int64;

    private inline function set_SteamId(value:haxe.Int64):haxe.Int64 {
        var __value:haxe.Int64 = cast value;
        return untyped __cs__("{0}.SteamId = {1}", this, __value);
    }

    var CountryCode(default,set):String;

    private inline function set_CountryCode(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.CountryCode = {1}", this, __value);
    }

    var DisplayName(default,set):String;

    private inline function set_DisplayName(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.DisplayName = {1}", this, __value);
    }

}
