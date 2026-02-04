package sandbox.audio;

/** Allows the capture and monitor of an audio source */
@:native("Sandbox.Audio.AudioMeter")
extern class AudioMeter {
    var Current(default,never):sandbox.audio.audiometer.Frame;
}
