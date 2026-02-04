package sandbox.services.leaderboardresponseex;

@:native("Sandbox.Services.LeaderboardResponseEx.Entry")
final extern class Entry {
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

    var Timestamp(default,set):system.DateTimeOffset;

    private inline function set_Timestamp(value:system.DateTimeOffset):system.DateTimeOffset {
        var __value:system.DateTimeOffset = cast value;
        return untyped __cs__("{0}.Timestamp = {1}", this, __value);
    }

    var Data(default,set):system.collections.generic.Dictionary<String,cs.system.Object>;

    private inline function set_Data(value:system.collections.generic.Dictionary<String,cs.system.Object>):system.collections.generic.Dictionary<String,cs.system.Object> {
        var __value:system.collections.generic.Dictionary<String,cs.system.Object> = cast value;
        return untyped __cs__("{0}.Data = {1}", this, __value);
    }

}
