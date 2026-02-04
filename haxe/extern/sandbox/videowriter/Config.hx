package sandbox.videowriter;

@:native("Sandbox.VideoWriter.Config")
final extern class Config {
    var Width(default,set):Int;

    private inline function set_Width(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Width = {1}", this, __value);
    }

    var Height(default,set):Int;

    private inline function set_Height(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Height = {1}", this, __value);
    }

    var FrameRate(default,set):Int;

    private inline function set_FrameRate(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.FrameRate = {1}", this, __value);
    }

    var Bitrate(default,set):Int;

    private inline function set_Bitrate(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Bitrate = {1}", this, __value);
    }

    var Codec(default,set):sandbox.videowriter.Codec;

    private inline function set_Codec(value:sandbox.videowriter.Codec):sandbox.videowriter.Codec {
        var __value:sandbox.videowriter.Codec = cast value;
        return untyped __cs__("{0}.Codec = {1}", this, __value);
    }

    var Container(default,set):sandbox.videowriter.Container;

    private inline function set_Container(value:sandbox.videowriter.Container):sandbox.videowriter.Container {
        var __value:sandbox.videowriter.Container = cast value;
        return untyped __cs__("{0}.Container = {1}", this, __value);
    }

    /** Can this container support the codec. */
    function IsCodecSupported():Bool;
}
