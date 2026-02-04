package sandbox.audio;

@:native("Sandbox.Audio.PitchProcessor")
final extern class PitchProcessor {
    function new():Void;
    var Pitch(default,default):Single;
    @:protected
    var CurrentState(null,never):sandbox.audio.pitchprocessor.State;
    /** Is this processor active? */
    var Enabled(default,default):Bool;
    /** Should we fade the influence of this processor in? */
    var Mix(default,default):Single;
    /** The listener's position in this frame. */
    @:protected
    var Listener(null,never):Transform;
}
