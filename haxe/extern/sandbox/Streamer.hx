package sandbox;

@:native("Sandbox.Streamer")
final extern class Streamer {
    /** Your own username */
    static var Username(default,never):String;
    /** Your own user id */
    static var UserId(default,never):String;
    /** The service type (ie "Twitch") */
    static var Service(default,never):sandbox.StreamService;
    /** Are we connected to a service */
    static var IsActive(default,never):Bool;
    /** Set the game you're playing by game id */
    static var Game(never,default):String;
    /** Set the language of your stream */
    static var Language(never,default):String;
    /** Set the title of your stream */
    static var Title(never,default):String;
    /** Set the delay of your stream */
    static var Delay(never,default):Int;
    /** Amount of concurrent viewer your stream has. */
    static var ViewerCount(default,never):Int;
    /** Ban user from your chat by username, the user will no longer be able to chat. Optionally specify the duration, a duration of zero means perm ban (Note: You have to be in your chat for this to work) */
    static function BanUser(username:String, reason:String, duration:Int):Void;
    /** Clear your own chat */
    static function ClearChat():Void;
    /** Get user information. If no username is specified, the user returned is ourself */
    static function GetUser(username:String):system.threading.tasks.Task1<sandbox.StreamUser>;
    /** Send a message to chat, optionally specify channel you want to send the message, otherwise it is sent to your own chat */
    static function SendMessage(message:String):Void;
    /** Unban user from your chat by username (Note: You have to be in your chat for this to work) */
    static function UnbanUser(username:String):Void;
}
