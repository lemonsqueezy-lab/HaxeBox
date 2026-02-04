package sandbox.twitch.twitchapi;

@:native("Sandbox.Twitch.TwitchAPI.ChannelResponse")
extern class ChannelResponse {
    function new():Void;
    var BroadcasterId(default,default):String;
    var BroadcasterLogin(default,default):String;
    var BroadcasterName(default,default):String;
    var BroadcasterLanguage(default,default):String;
    var GameId(default,default):String;
    var GameName(default,default):String;
    var Title(default,default):String;
    var Delay(default,default):Int;
}
