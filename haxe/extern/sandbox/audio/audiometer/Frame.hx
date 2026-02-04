package sandbox.audio.audiometer;

@:native("Sandbox.Audio.AudioMeter.Frame")
final extern class Frame {
    var MaxLevelLeft(default,set):Single;

    private inline function set_MaxLevelLeft(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.MaxLevelLeft = {1}", this, __value);
    }

    var MaxLevelRight(default,set):Single;

    private inline function set_MaxLevelRight(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.MaxLevelRight = {1}", this, __value);
    }

    var MaxLevel(default,never):Single;
    /** The amount of individual voices playing */
    var VoiceCount(default,set):Int;

    private inline function set_VoiceCount(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.VoiceCount = {1}", this, __value);
    }

}
