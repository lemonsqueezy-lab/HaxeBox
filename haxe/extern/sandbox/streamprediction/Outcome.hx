package sandbox.streamprediction;

@:native("Sandbox.StreamPrediction.Outcome")
final extern class Outcome {
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

    var Users(default,set):Int;

    private inline function set_Users(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Users = {1}", this, __value);
    }

    var ChannelPoints(default,set):Int;

    private inline function set_ChannelPoints(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.ChannelPoints = {1}", this, __value);
    }

    var Color(default,set):String;

    private inline function set_Color(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Color = {1}", this, __value);
    }

}
