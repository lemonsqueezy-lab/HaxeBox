package sandbox.twitch.twitchapi;

@:native("Sandbox.Twitch.TwitchAPI.StreamsResponse")
extern class StreamsResponse {
    function new():Void;
    var Streams(default,default):Array<sandbox.twitch.twitchapi.StreamResponse>;
    function FirstOrDefault():sandbox.twitch.twitchapi.StreamResponse;
}
