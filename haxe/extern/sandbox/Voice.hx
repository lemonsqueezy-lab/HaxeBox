package sandbox;

/** Records and transmits voice/microphone input to other players. */
@:native("Sandbox.Voice")
extern class Voice extends sandbox.Component {
    function new():Void;
    var Volume(default,default):Single;
    var Mode(default,default):sandbox.voice.ActivateMode;
    var PushToTalkInput(default,default):String;
    var WorldspacePlayback(default,default):Bool;
    var Loopback(default,default):Bool;
    var LipSync(default,default):Bool;
    var Renderer(default,default):sandbox.SkinnedModelRenderer;
    var MorphScale(default,default):Single;
    var MorphSmoothTime(default,default):Single;
    /** How long has it been since this sound played? */
    var LastPlayed(default,never):sandbox.RealTimeSince;
    /** Laughter score for the current audio frame, between 0 and 1 */
    var LaughterScore(default,never):Single;
    var VoiceMixer(default,default):sandbox.audio.MixerHandle;
    var TargetMixer(default,default):sandbox.audio.Mixer;
    var Distance(default,default):Single;
    var Falloff(default,default):sandbox.Curve;
    /** A list of 15 lipsync viseme weights. Requires to be enabled. */
    var Visemes(default,never):system.collections.generic.IReadOnlyList<Single>;
    var IsRecording(default,never):Bool;
    /** Returns true if the mic is listening. Even if it's listening, it might not be playing - because it will only record and transmit if it can hear sound. */
    var IsListening(default,default):Bool;
    /** Measure of audio loudness. */
    var Amplitude(default,never):Single;
    /** Exclude these connection from hearing our voice. */
    @:protected function ExcludeFilter():system.collections.generic.IEnumerable<sandbox.Connection>;
    @:protected function OnUpdate():Void;
    /** Whether we want to hear voice from a particular connection. */
    @:protected function ShouldHearVoice(connection:sandbox.Connection):Bool;
}
