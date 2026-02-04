package sandbox;

@:native("Sandbox.StreamUser")
final extern class StreamUser {
    var Id(default,set):String;

    private inline function set_Id(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Id = {1}", this, __value);
    }

    var Login(default,set):String;

    private inline function set_Login(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Login = {1}", this, __value);
    }

    var DisplayName(default,set):String;

    private inline function set_DisplayName(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.DisplayName = {1}", this, __value);
    }

    var UserType(default,set):String;

    private inline function set_UserType(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.UserType = {1}", this, __value);
    }

    var BroadcasterType(default,set):String;

    private inline function set_BroadcasterType(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.BroadcasterType = {1}", this, __value);
    }

    var Description(default,set):String;

    private inline function set_Description(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Description = {1}", this, __value);
    }

    var ProfileImageUrl(default,set):String;

    private inline function set_ProfileImageUrl(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.ProfileImageUrl = {1}", this, __value);
    }

    var OfflineImageUrl(default,set):String;

    private inline function set_OfflineImageUrl(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.OfflineImageUrl = {1}", this, __value);
    }

    var ViewCount(default,set):Int;

    private inline function set_ViewCount(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.ViewCount = {1}", this, __value);
    }

    var Email(default,set):String;

    private inline function set_Email(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Email = {1}", this, __value);
    }

    var CreatedAt(default,set):system.DateTimeOffset;

    private inline function set_CreatedAt(value:system.DateTimeOffset):system.DateTimeOffset {
        var __value:system.DateTimeOffset = cast value;
        return untyped __cs__("{0}.CreatedAt = {1}", this, __value);
    }

    /** Get following "Who is following us" */
    var Following(default,never):system.threading.tasks.Task1<system.collections.generic.List<sandbox.StreamUserFollow>>;
    /** Get followers "Who are we following" */
    var Followers(default,never):system.threading.tasks.Task1<system.collections.generic.List<sandbox.StreamUserFollow>>;
    /** Ban user from your chat, the user will no longer be able to chat. Optionally specify the duration, a duration of zero means perm ban (Note: You have to be in your chat for this to work) */
    function Ban(reason:String, duration:Int):Void;
    /** Create a clip of our stream, if we're streaming */
    function CreateClip(hasDelay:Bool):system.threading.tasks.Task1<sandbox.StreamClip>;
    /** Start a poll on our channel with multiple choices, save the poll so you can end it later on */
    function CreatePoll(title:String, duration:Int, choices:Array<String>):system.threading.tasks.Task1<sandbox.StreamPoll>;
    /** Create a prediction on our channel to bet with channel points */
    function CreatePrediction(title:String, duration:Int, firstOutcome:String, secondOutcome:String):system.threading.tasks.Task1<sandbox.StreamPrediction>;
    /** Unban user from your chat, this allows them to chat again (Note: You have to be in your chat for this to work) */
    function Unban():Void;
}
