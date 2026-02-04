package sandbox;

@:native("Sandbox.StreamClip")
final extern class StreamClip {
    var EditUrl(default,set):String;

    private inline function set_EditUrl(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.EditUrl = {1}", this, __value);
    }

    var Id(default,set):String;

    private inline function set_Id(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Id = {1}", this, __value);
    }

}
