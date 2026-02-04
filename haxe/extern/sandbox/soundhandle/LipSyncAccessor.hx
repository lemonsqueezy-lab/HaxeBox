package sandbox.soundhandle;

@:native("Sandbox.SoundHandle.LipSyncAccessor")
extern class LipSyncAccessor {
    /** A list of 15 lipsync viseme weights. Requires to be true. */
    var Visemes(default,never):system.collections.generic.IReadOnlyList<Single>;
    /** Count from start of recognition. */
    var FrameNumber(default,never):Int;
    /** Frame delay in milliseconds. */
    var FrameDelay(default,never):Int;
    /** Laughter score for the current audio frame. */
    var LaughterScore(default,never):Single;
    /** Enables lipsync processing. */
    var Enabled(default,default):Bool;
}
