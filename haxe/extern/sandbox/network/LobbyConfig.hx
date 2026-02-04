package sandbox.network;

@:native("Sandbox.Network.LobbyConfig")
final extern class LobbyConfig {
    function new():Void;
    /** Whether to automatically destroy this lobby when the host leaves. This is only applicable to P2P lobbies. */
    var DestroyWhenHostLeaves(default,set):Bool;

    private inline function set_DestroyWhenHostLeaves(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.DestroyWhenHostLeaves = {1}", this, __value);
    }

    /** Whether to periodically switch to the best possible host candidate. This is only applicable to P2P lobbies. */
    var AutoSwitchToBestHost(default,set):Bool;

    private inline function set_AutoSwitchToBestHost(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.AutoSwitchToBestHost = {1}", this, __value);
    }

    /** Whether to hide this lobby from appearing in the server list. It will still be queryable programatically, so long as the mode allows it. */
    var Hidden(default,set):Bool;

    private inline function set_Hidden(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.Hidden = {1}", this, __value);
    }

    /** Determines who is able to connect to this lobby. This will be public by default. */
    var Privacy(default,set):sandbox.network.LobbyPrivacy;

    private inline function set_Privacy(value:sandbox.network.LobbyPrivacy):sandbox.network.LobbyPrivacy {
        var __value:sandbox.network.LobbyPrivacy = cast value;
        return untyped __cs__("{0}.Privacy = {1}", this, __value);
    }

    /** The maximum amount of players this lobby can hold. By default, this will be the Max Players set in the current Game Package's project settings. */
    var MaxPlayers(default,set):Int;

    private inline function set_MaxPlayers(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.MaxPlayers = {1}", this, __value);
    }

    /** The name of this lobby. If this isn't set, a default lobby name will be chosen instead. */
    var Name(default,set):String;

    private inline function set_Name(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Name = {1}", this, __value);
    }

}
