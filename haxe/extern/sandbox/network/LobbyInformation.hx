package sandbox.network;

@:native("Sandbox.Network.LobbyInformation")
final extern class LobbyInformation {
    /** True if this lobby is full (Members >= MaxMembers). */
    var IsFull(default,never):Bool;
    /** True if this lobby should be hidden from server lists. */
    var IsHidden(default,never):Bool;
    var LobbyId(default,set):system.UInt64;

    private inline function set_LobbyId(value:system.UInt64):system.UInt64 {
        var __value:system.UInt64 = cast value;
        return untyped __cs__("{0}.LobbyId = {1}", this, __value);
    }

    var OwnerId(default,set):system.UInt64;

    private inline function set_OwnerId(value:system.UInt64):system.UInt64 {
        var __value:system.UInt64 = cast value;
        return untyped __cs__("{0}.OwnerId = {1}", this, __value);
    }

    var Members(default,set):Int;

    private inline function set_Members(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Members = {1}", this, __value);
    }

    var MaxMembers(default,set):Int;

    private inline function set_MaxMembers(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.MaxMembers = {1}", this, __value);
    }

    var Name(default,set):String;

    private inline function set_Name(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Name = {1}", this, __value);
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

    var Data(default,set):system.collections.generic.Dictionary<String,String>;

    private inline function set_Data(value:system.collections.generic.Dictionary<String,String>):system.collections.generic.Dictionary<String,String> {
        var __value:system.collections.generic.Dictionary<String,String> = cast value;
        return untyped __cs__("{0}.Data = {1}", this, __value);
    }

    function Get(key:String, defaultValue:String):String;
}
