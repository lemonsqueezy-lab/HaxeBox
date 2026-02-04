package sandbox.twitch.twitchapi;

@:native("Sandbox.Twitch.TwitchAPI.CreateClipsResponse")
extern class CreateClipsResponse {
    function new():Void;
    var Clips(default,default):Array<sandbox.twitch.twitchapi.CreateClipResponse>;
    function FirstOrDefault():sandbox.twitch.twitchapi.CreateClipResponse;
}
