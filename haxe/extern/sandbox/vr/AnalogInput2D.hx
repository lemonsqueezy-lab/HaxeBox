package sandbox.vr;

/** Represents a two-dimensional VR analog input action (e.g. joysticks) */
@:native("Sandbox.VR.AnalogInput2D")
final extern class AnalogInput2D {
    /** The current value of this input, with both axes ranging from 0 to 1. */
    var Value(default,never):Vector2;
    /** How much has changed since the last update, with both axes ranging from 0 to 1. */
    var Delta(default,set):Vector2;

    private inline function set_Delta(value:Vector2):Vector2 {
        var __value:Vector2 = cast value;
        return untyped __cs__("{0}.Delta = {1}", this, __value);
    }

    /** Whether or not this action is currently accessible (if false, then will always be 0 and will never change). */
    var Active(default,never):Bool;
}
