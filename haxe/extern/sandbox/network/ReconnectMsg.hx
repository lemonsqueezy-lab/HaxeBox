package sandbox.network;

/** Sent to the server to tell clients to reconnect. This is sent when the server is changing games, or maps, and wants the current players to follow them to the new game, or map. We send the Game and Map to the best of our knowledge, so the client can maybe preload them, while we are. */
@:native("Sandbox.Network.ReconnectMsg")
final extern class ReconnectMsg {
    var Game(default,set):String;

    private inline function set_Game(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Game = {1}", this, __value);
    }

    var Map(default,set):String;

    private inline function set_Map(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Map = {1}", this, __value);
    }

}
