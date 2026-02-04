package sandbox.gradient;

/** Keyframes times and values should range between 0 and 1 */
@:native("Sandbox.Gradient.AlphaFrame")
final extern class AlphaFrame {
    function new(timedelta:Single, alpha:Single):Void;
    var Time(default,set):Single;

    private inline function set_Time(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Time = {1}", this, __value);
    }

    var Value(default,set):Single;

    private inline function set_Value(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Value = {1}", this, __value);
    }

}
