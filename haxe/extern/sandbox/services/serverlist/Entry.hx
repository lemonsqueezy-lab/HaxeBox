package sandbox.services.serverlist;

/** This is a cleaned up version of gameserveritem_t. */
@:native("Sandbox.Services.ServerList.Entry")
final extern class Entry {
    var IPAddressAndPort(default,set):String;

    private inline function set_IPAddressAndPort(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.IPAddressAndPort = {1}", this, __value);
    }

    var SteamId(default,set):system.UInt64;

    private inline function set_SteamId(value:system.UInt64):system.UInt64 {
        var __value:system.UInt64 = cast value;
        return untyped __cs__("{0}.SteamId = {1}", this, __value);
    }

    var Map(default,set):String;

    private inline function set_Map(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Map = {1}", this, __value);
    }

    var Game(default,set):String;

    private inline function set_Game(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Game = {1}", this, __value);
    }

    var GameVersion(default,set):Int;

    private inline function set_GameVersion(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.GameVersion = {1}", this, __value);
    }

    var Name(default,set):String;

    private inline function set_Name(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Name = {1}", this, __value);
    }

    var Tags(default,set):Array<String>;

    private inline function set_Tags(value:Array<String>):Array<String> {
        var __value:Array<String> = cast value;
        return untyped __cs__("{0}.Tags = {1}", this, __value);
    }

    var Players(default,set):Int;

    private inline function set_Players(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Players = {1}", this, __value);
    }

    var MaxPlayers(default,set):Int;

    private inline function set_MaxPlayers(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.MaxPlayers = {1}", this, __value);
    }

    var Ping(default,set):Int;

    private inline function set_Ping(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Ping = {1}", this, __value);
    }

    var Tick(default,set):Int;

    private inline function set_Tick(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Tick = {1}", this, __value);
    }

}
