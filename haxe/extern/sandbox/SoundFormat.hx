package sandbox;

@:native("Sandbox.SoundFormat")
extern enum abstract SoundFormat(Int) {
    var PCM16;
    var PCM8;
    var MP3;
    var ADPCM;
}
