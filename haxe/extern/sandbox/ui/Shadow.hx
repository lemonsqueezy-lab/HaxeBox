package sandbox.ui;

/** Shadow style settings */
@:native("Sandbox.UI.Shadow")
final extern class Shadow {
    var OffsetX(default,set):Single;

    private inline function set_OffsetX(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.OffsetX = {1}", this, __value);
    }

    var OffsetY(default,set):Single;

    private inline function set_OffsetY(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.OffsetY = {1}", this, __value);
    }

    var Blur(default,set):Single;

    private inline function set_Blur(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Blur = {1}", this, __value);
    }

    var Spread(default,set):Single;

    private inline function set_Spread(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Spread = {1}", this, __value);
    }

    var Inset(default,set):Bool;

    private inline function set_Inset(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.Inset = {1}", this, __value);
    }

    var Color(default,set):Color;

    private inline function set_Color(value:Color):Color {
        var __value:Color = cast value;
        return untyped __cs__("{0}.Color = {1}", this, __value);
    }

    function GetHashCode():Int;
    /** Perform linear interpolation between 2 shadows. */
    function LerpTo(shadow:sandbox.ui.Shadow, delta:Single):sandbox.ui.Shadow;
    /** Scale all variables by given scalar. */
    function Scale(f:Single):sandbox.ui.Shadow;
}
