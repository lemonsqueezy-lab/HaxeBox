package sandbox.twitch.twitchapi;

@:native("Sandbox.Twitch.TwitchAPI.UserResponse")
extern class UserResponse {
    function new():Void;
    var Id(default,default):String;
    var Login(default,default):String;
    var DisplayName(default,default):String;
    var UserType(default,default):String;
    var BroadcasterType(default,default):String;
    var Description(default,default):String;
    var ProfileImageUrl(default,default):String;
    var OfflineImageUrl(default,default):String;
    var ViewCount(default,default):Int;
    var Email(default,default):String;
    var CreatedAt(default,default):String;
}
