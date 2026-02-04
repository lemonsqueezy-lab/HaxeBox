package sandbox.twitch.twitchapi;

@:native("Sandbox.Twitch.TwitchAPI.ChannelsResponse")
extern class ChannelsResponse {
    function new():Void;
    var Channels(default,default):Array<sandbox.twitch.twitchapi.ChannelResponse>;
    function FirstOrDefault():sandbox.twitch.twitchapi.ChannelResponse;
}
