package sandbox.twitch.twitchapi;

@:native("Sandbox.Twitch.TwitchAPI.UserFollowsResponse")
extern class UserFollowsResponse {
    function new():Void;
    var UserFollows(default,default):Array<sandbox.twitch.twitchapi.UserFollowResponse>;
}
