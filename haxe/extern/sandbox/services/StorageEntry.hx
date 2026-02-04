package sandbox.services;

@:native("Sandbox.Services.StorageEntry")
final extern class StorageEntry {
    var Updated(default,set):system.DateTimeOffset;

    private inline function set_Updated(value:system.DateTimeOffset):system.DateTimeOffset {
        var __value:system.DateTimeOffset = cast value;
        return untyped __cs__("{0}.Updated = {1}", this, __value);
    }

    var SteamId(default,set):haxe.Int64;

    private inline function set_SteamId(value:haxe.Int64):haxe.Int64 {
        var __value:haxe.Int64 = cast value;
        return untyped __cs__("{0}.SteamId = {1}", this, __value);
    }

    var Key(default,set):String;

    private inline function set_Key(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Key = {1}", this, __value);
    }

    var Value(default,set):String;

    private inline function set_Value(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Value = {1}", this, __value);
    }

}
