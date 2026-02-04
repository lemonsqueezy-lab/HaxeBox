package sandbox.vr;

/** Represents a VR digital input action (e.g. X button) */
@:native("Sandbox.VR.DigitalInput")
final extern class DigitalInput {
    /** The current value of this input - true if pressed, false if not pressed. */
    var IsPressed(default,never):Bool;
    /** The previous value of this input - true if it was pressed, false if it was not pressed. */
    var WasPressed(default,set):Bool;

    private inline function set_WasPressed(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.WasPressed = {1}", this, __value);
    }

    /** How much has changed since the last update. */
    var Delta(default,set):Bool;

    private inline function set_Delta(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.Delta = {1}", this, __value);
    }

    /** Whether or not this action is currently accessible (if false, then will always be false and will never change). */
    var Active(default,never):Bool;
}
