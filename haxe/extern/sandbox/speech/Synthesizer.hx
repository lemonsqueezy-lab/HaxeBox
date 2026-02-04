package sandbox.speech;

/** A speech synthesis stream. Lets you write text into speech and output it to a . */
@:native("Sandbox.Speech.Synthesizer")
final extern class Synthesizer {
    function new():Void;
    /** Gets a list of currently installed voices on the user's system. */
    var InstalledVoices(default,never):system.collections.objectmodel.ReadOnlyCollection<sandbox.speech.synthesizer.InstalledVoice>;
    /** Gets the current voice being used by . */
    var CurrentVoice(default,never):String;
    /** Registers an action to fetch all viseme data. */
    function OnVisemeReached(action:system.Action2<Int,system.TimeSpan>):sandbox.speech.Synthesizer;
    /** Takes info from and creates a , outputting to a stream object. Using we then read all the PCM samples, and write it to a SoundStream. This means it'll work like any other sound. */
    function Play():sandbox.SoundHandle;
    /** Tries to set the voice to a matching voice name installed on the user's system. */
    overload function TrySetVoice(voiceName:String):sandbox.speech.Synthesizer;
    overload function TrySetVoice(gender:String, age:String):sandbox.speech.Synthesizer;
    /** Adds a break to the speech. */
    function WithBreak():sandbox.speech.Synthesizer;
    /** Sets the playback rate of the synthesizer. */
    function WithRate(rate:Int):sandbox.speech.Synthesizer;
    /** Adds some text to the speech. */
    function WithText(input:String):sandbox.speech.Synthesizer;
}
