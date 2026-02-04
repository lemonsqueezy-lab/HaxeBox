package sandbox.twitch.twitchapi;

@:native("Sandbox.Twitch.TwitchAPI.UsersResponse")
extern class UsersResponse {
    function new():Void;
    var Users(default,default):Array<sandbox.twitch.twitchapi.UserResponse>;
    function FirstOrDefault():sandbox.twitch.twitchapi.UserResponse;
}
