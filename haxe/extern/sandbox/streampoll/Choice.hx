package sandbox.streampoll;

@:native("Sandbox.StreamPoll.Choice")
final extern class Choice {
    var Id(default,set):String;

    private inline function set_Id(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Id = {1}", this, __value);
    }

    var Title(default,set):String;

    private inline function set_Title(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Title = {1}", this, __value);
    }

    var Votes(default,set):Int;

    private inline function set_Votes(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Votes = {1}", this, __value);
    }

    var ChannelPointsVotes(default,set):Int;

    private inline function set_ChannelPointsVotes(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.ChannelPointsVotes = {1}", this, __value);
    }

    var BitsVotes(default,set):Int;

    private inline function set_BitsVotes(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.BitsVotes = {1}", this, __value);
    }

}
