package sandbox.internal;

@:native("Sandbox.Internal.AudioSettings")
final extern class AudioSettings {
    /** Get the active audio device */
    static function GetActiveDevice():sandbox.internal.audiosettings.AudioDevice;
    /** Get all audio devices supported by the current platform */
    static function GetAudioDevices():system.collections.generic.IEnumerable<sandbox.internal.audiosettings.AudioDevice>;
    /** Set the active audio device by id */
    static function SetActiveDevice(id:String):Void;
}
