package sandbox.videoplayer;

@:native("Sandbox.VideoPlayer.AudioAccessor")
extern class AudioAccessor {
    /** Place the listener at 0,0,0 facing 1,0,0. */
    var ListenLocal(default,default):Bool;
    /** Position of the sound. */
    var Position(default,default):Vector3;
    /** Which mixer do we want to write to */
    var TargetMixer(default,default):sandbox.audio.Mixer;
    /** Volume of the sound. */
    var Volume(default,default):Single;
    /** Enables lipsync processing. */
    var LipSync(default,default):Bool;
    var Distance(default,default):Single;
    var Falloff(default,default):sandbox.Curve;
    /** A list of 15 lipsync viseme weights. Requires to be enabled. */
    var Visemes(default,never):system.collections.generic.IReadOnlyList<Single>;
}
