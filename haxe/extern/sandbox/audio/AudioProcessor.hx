package sandbox.audio;

@:native("Sandbox.Audio.AudioProcessor`1")
extern class AudioProcessor<T> {
    @:protected
    var CurrentState(null,never):T;
    /** Is this processor active? */
    var Enabled(default,default):Bool;
    /** Should we fade the influence of this processor in? */
    var Mix(default,default):Single;
    /** The listener's position in this frame. */
    @:protected
    var Listener(null,never):Transform;
}
