package sandbox.vr;

/** Represents a VR analog input action (e.g. trigger) */
@:native("Sandbox.VR.AnalogInput")
final extern class AnalogInput {
    /** The current value of this input, from 0 to 1. */
    var Value(default,never):Single;
    /** How much has changed since the last update, from 0 to 1. */
    var Delta(default,set):Single;

    private inline function set_Delta(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Delta = {1}", this, __value);
    }

    /** Whether or not this action is currently accessible (if false, then will always be 0 and will never change). */
    var Active(default,never):Bool;
}
