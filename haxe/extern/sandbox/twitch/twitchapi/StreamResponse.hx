package sandbox.twitch.twitchapi;

@:native("Sandbox.Twitch.TwitchAPI.StreamResponse")
extern class StreamResponse {
    function new():Void;
    var Id(default,default):String;
    var UserId(default,default):String;
    var UserLogin(default,default):String;
    var UserName(default,default):String;
    var GameId(default,default):String;
    var GameName(default,default):String;
    var Type(default,default):String;
    var Title(default,default):String;
    var ViewerCount(default,default):Int;
    var StartedAt(default,default):String;
    var Language(default,default):String;
    var ThumbnailUrl(default,default):String;
    var TagIds(default,default):Array<String>;
    var IsMature(default,default):Bool;
}
