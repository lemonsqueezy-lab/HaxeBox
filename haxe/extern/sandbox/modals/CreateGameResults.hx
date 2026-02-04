package sandbox.modals;

@:native("Sandbox.Modals.CreateGameResults")
final extern class CreateGameResults {
    function new():Void;
    var GameSettings(default,set):system.collections.generic.Dictionary<String,String>;

    private inline function set_GameSettings(value:system.collections.generic.Dictionary<String,String>):system.collections.generic.Dictionary<String,String> {
        var __value:system.collections.generic.Dictionary<String,String> = cast value;
        return untyped __cs__("{0}.GameSettings = {1}", this, __value);
    }

    var MapIdent(default,set):String;

    private inline function set_MapIdent(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.MapIdent = {1}", this, __value);
    }

    var MaxPlayers(default,set):Int;

    private inline function set_MaxPlayers(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.MaxPlayers = {1}", this, __value);
    }

    var ServerName(default,set):String;

    private inline function set_ServerName(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.ServerName = {1}", this, __value);
    }

    var Privacy(default,set):sandbox.network.LobbyPrivacy;

    private inline function set_Privacy(value:sandbox.network.LobbyPrivacy):sandbox.network.LobbyPrivacy {
        var __value:sandbox.network.LobbyPrivacy = cast value;
        return untyped __cs__("{0}.Privacy = {1}", this, __value);
    }

}
