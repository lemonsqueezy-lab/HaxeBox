package sandbox;

@:native("Sandbox.AnimationSequence")
extern class AnimationSequence {
    /** The duration of the currently playing sequence (seconds) */
    var Duration(default,never):Single;
    /** Get whether the current animation sequence has finished */
    var IsFinished(default,never):Bool;
    /** The name of the currently playing animation sequence */
    var Name(default,default):String;
    /** The normalized (between 0 and 1) elapsed time of the currently playing animation sequence */
    var TimeNormalized(default,default):Single;
    /** The elapsed time of the currently playing animation sequence (seconds) */
    var Time(default,default):Single;
    /** The list of sequences that can be used */
    var SequenceNames(default,never):system.collections.generic.IReadOnlyList<String>;
}
