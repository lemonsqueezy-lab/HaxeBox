package sandbox.audio;

/** Represents an audio channel, between 0 and 7. This is used to index into buffers. This is used rather than an int to avoid unfortuate bugs. */
@:native("Sandbox.Audio.AudioChannel")
final extern class AudioChannel {
    function new(i:Int):Void;
    static var Left(default,never):sandbox.audio.AudioChannel;
    static var Right(default,never):sandbox.audio.AudioChannel;
    function Get():Int;
}
