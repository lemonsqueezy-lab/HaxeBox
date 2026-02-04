package sandbox;

@:native("Sandbox.StreamPoll")
final extern class StreamPoll {
    var Id(default,set):String;

    private inline function set_Id(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Id = {1}", this, __value);
    }

    var BroadcasterId(default,set):String;

    private inline function set_BroadcasterId(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.BroadcasterId = {1}", this, __value);
    }

    var BroadcasterName(default,set):String;

    private inline function set_BroadcasterName(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.BroadcasterName = {1}", this, __value);
    }

    var BroadcasterLogin(default,set):String;

    private inline function set_BroadcasterLogin(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.BroadcasterLogin = {1}", this, __value);
    }

    var Title(default,set):String;

    private inline function set_Title(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Title = {1}", this, __value);
    }

    var Choices(default,set):Array<sandbox.streampoll.Choice>;

    private inline function set_Choices(value:Array<sandbox.streampoll.Choice>):Array<sandbox.streampoll.Choice> {
        var __value:Array<sandbox.streampoll.Choice> = cast value;
        return untyped __cs__("{0}.Choices = {1}", this, __value);
    }

    var BitsVotingEnabled(default,set):Bool;

    private inline function set_BitsVotingEnabled(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.BitsVotingEnabled = {1}", this, __value);
    }

    var BitsPerVote(default,set):Int;

    private inline function set_BitsPerVote(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.BitsPerVote = {1}", this, __value);
    }

    var ChannelPointsVotingEnabled(default,set):Bool;

    private inline function set_ChannelPointsVotingEnabled(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.ChannelPointsVotingEnabled = {1}", this, __value);
    }

    var ChannelPointsPerVote(default,set):Int;

    private inline function set_ChannelPointsPerVote(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.ChannelPointsPerVote = {1}", this, __value);
    }

    var Status(default,set):String;

    private inline function set_Status(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Status = {1}", this, __value);
    }

    var Duration(default,set):Int;

    private inline function set_Duration(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Duration = {1}", this, __value);
    }

    var StartedAt(default,set):system.DateTimeOffset;

    private inline function set_StartedAt(value:system.DateTimeOffset):system.DateTimeOffset {
        var __value:system.DateTimeOffset = cast value;
        return untyped __cs__("{0}.StartedAt = {1}", this, __value);
    }

    var EndedAt(default,set):system.DateTimeOffset;

    private inline function set_EndedAt(value:system.DateTimeOffset):system.DateTimeOffset {
        var __value:system.DateTimeOffset = cast value;
        return untyped __cs__("{0}.EndedAt = {1}", this, __value);
    }

    /** End this poll, you can optionally archive the poll, otherwise just terminate it */
    function End(archive:Bool):system.threading.tasks.Task1<sandbox.StreamPoll>;
}
