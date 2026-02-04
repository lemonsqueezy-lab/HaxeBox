package sandbox.speech;

@:native("Sandbox.Speech.Recognition")
final extern class Recognition {
    /** Whether or not we are currently listening for speech. */
    static var IsListening(default,never):Bool;
    /** Whether or not speech recognition is supported and a language is available. */
    static var IsSupported(default,never):Bool;
    /** Start listening for speech to recognize as text. When speech has been recognized the callback will be invoked, the callback will also be invoked if recognition fails. */
    static function Start(callback:sandbox.speech.recognition.OnSpeechResult, choices:system.collections.generic.IEnumerable<String>):Void;
    /** Stop any active listening for speech. */
    static function Stop():Void;
}
