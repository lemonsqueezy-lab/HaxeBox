package sandbox.audio;

@:native("Sandbox.Audio.DelayProcessor")
final extern class DelayProcessor {
    function new():Void;
    var Delay(default,default):Single;
    var Volume(default,default):Single;
    @:protected
    var CurrentState(null,never):sandbox.audio.delayprocessor.State;
    /** Is this processor active? */
    var Enabled(default,default):Bool;
    /** Should we fade the influence of this processor in? */
    var Mix(default,default):Single;
    /** The listener's position in this frame. */
    @:protected
    var Listener(null,never):Transform;
}
