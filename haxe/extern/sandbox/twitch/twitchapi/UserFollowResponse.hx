package sandbox.twitch.twitchapi;

@:native("Sandbox.Twitch.TwitchAPI.UserFollowResponse")
extern class UserFollowResponse {
    function new():Void;
    var FromId(default,default):String;
    var FromLogin(default,default):String;
    var FromName(default,default):String;
    var ToId(default,default):String;
    var ToLogin(default,default):String;
    var ToName(default,default):String;
    var FollowedAt(default,default):String;
}
