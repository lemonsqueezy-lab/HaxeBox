package sandbox;

/** Single source for creating sounds */
@:native("Sandbox.Sound")
final extern class Sound {
    /** Sound listener of the active scene. */
    static var Listener(default,default):Transform;
    /** The user's preference for their master volume. */
    static var MasterVolume(default,never):Single;
    /** Get a list of available DSP names */
    static var DspNames(default,never):Array<String>;
    /** The sample rate for voice data */
    static var VoiceSampleRate(default,never):Int;
    /** Play a sound and set its position */
    static overload function Play(eventName:String):sandbox.SoundHandle;
    static overload function Play(soundEvent:sandbox.SoundEvent):sandbox.SoundHandle;
    static overload function Play(eventName:String, position:Vector3):sandbox.SoundHandle;
    static overload function Play(eventName:String, mixer:sandbox.audio.Mixer):sandbox.SoundHandle;
    static overload function Play(soundEvent:sandbox.SoundEvent, position:Vector3):sandbox.SoundHandle;
    static overload function PlayFile(soundFile:sandbox.SoundFile, volume:Single, pitch:Single, delay:Single):sandbox.SoundHandle;
    static overload function PlayFile(soundFile:sandbox.SoundFile, volume:Single, pitch:Single, decibels:Single, delay:Single):sandbox.SoundHandle;
    /** Precaches sound files associated with given sound event by name. This helps avoid stutters on first load of each sound file. */
    static function Preload(eventName:String):Void;
    static function SetEffect(name:String, value:Single, velocity:Single, fadeOut:Single):Void;
    static function StopAll(fade:Single):Void;
    /** Uncompress the voice data */
    static function UncompressVoiceData(buffer:Array<Int>, ondata:system.Action1<system.Memory<Int>>):Void;
}
