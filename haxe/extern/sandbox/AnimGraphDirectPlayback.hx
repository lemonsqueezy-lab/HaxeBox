package sandbox;

/** For communicating with a Direct Playback Anim Node, which allows code to tell it to play a given sequence */
@:native("Sandbox.AnimGraphDirectPlayback")
extern class AnimGraphDirectPlayback {
    /** Set the time at which the currently playing sequence should have had a cycle of zero. This will adjust the current cycle of the sequence to match. */
    var StartTime(never,default):Single;
    /** Get the cycle of the currently playing sequence. Will return 0 if no sequence is playing. */
    var TimeNormalized(default,never):Single;
    /** The duration of the currently playing sequence (seconds) */
    var Duration(default,never):Single;
    /** The elapsed time of the currently playing animation sequence (seconds) */
    var Time(default,never):Single;
    /** Returns the currently playing sequence. */
    var Name(default,never):String;
    /** Get the number of animations that can be used. */
    var AnimationCount(default,never):Int;
    /** Get the list of animations that can be used. */
    var Animations(default,never):system.collections.generic.IEnumerable<String>;
    /** Get the list of sequences that can be used. */
    var Sequences(default,never):system.collections.generic.IReadOnlyList<String>;
    /** Stop playing the override sequence. */
    function Cancel():Void;
    /** Play the given sequence until it ends, then blend back. Calling this function with a new sequence while another one is playing will immediately start blending from the old one to the new one. */
    overload function Play(name:String):Void;
    overload function Play(name:String, target:Vector3, heading:Single, interpTime:Single):Void;
}
