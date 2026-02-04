package sandbox.audio;

@:native("Sandbox.Audio.DspProcessor")
final extern class DspProcessor {
    overload function new():Void;
    overload function new(dspName:String):Void;
    var Effect(default,default):sandbox.audio.DspPresetHandle;
    @:protected
    var CurrentState(null,never):sandbox.audio.dspprocessor.State;
    /** Is this processor active? */
    var Enabled(default,default):Bool;
    /** Should we fade the influence of this processor in? */
    var Mix(default,default):Single;
    /** The listener's position in this frame. */
    @:protected
    var Listener(null,never):Transform;
    function ToString():String;
}
