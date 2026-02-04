package sandbox.curve;

/** Keyframes times and values should range between 0 and 1 */
@:native("Sandbox.Curve.Frame")
final extern class Frame {
    overload function new(timedelta:Single, valuedelta:Single):Void;
    overload function new(timedelta:Single, valuedelta:Single, inTangent:Single, outTangent:Single):Void;
    /** The delta position on the time line (0-1) */
    var Time(default,set):Single;

    private inline function set_Time(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Time = {1}", this, __value);
    }

    /** The delta position on the value line (0-1) */
    var Value(default,set):Single;

    private inline function set_Value(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Value = {1}", this, __value);
    }

    /** This is the slope of entry, formula is something like tan( angle ) */
    var In(default,set):Single;

    private inline function set_In(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.In = {1}", this, __value);
    }

    /** This is the slope of exit, formula is something like tan( angle ) */
    var Out(default,set):Single;

    private inline function set_Out(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Out = {1}", this, __value);
    }

    /** How the line should behave when entering/leaving this frame */
    var Mode(default,set):sandbox.curve.HandleMode;

    private inline function set_Mode(value:sandbox.curve.HandleMode):sandbox.curve.HandleMode {
        var __value:sandbox.curve.HandleMode = cast value;
        return untyped __cs__("{0}.Mode = {1}", this, __value);
    }

    function CompareTo(other:sandbox.curve.Frame):Int;
    function WithTime(time:Single):sandbox.curve.Frame;
    function WithValue(value:Single):sandbox.curve.Frame;
}
