package sandbox.internal.audiosettings;

@:native("Sandbox.Internal.AudioSettings.AudioDevice")
final extern class AudioDevice {
    var Id(default,set):String;

    private inline function set_Id(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Id = {1}", this, __value);
    }

    var Name(default,set):String;

    private inline function set_Name(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Name = {1}", this, __value);
    }

    var IsAvailable(default,set):Bool;

    private inline function set_IsAvailable(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.IsAvailable = {1}", this, __value);
    }

    var IsDefault(default,set):Bool;

    private inline function set_IsDefault(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.IsDefault = {1}", this, __value);
    }

}
