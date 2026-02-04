package sandbox.ui;

/** Describes panel's position and size for rendering operations. */
@:native("Sandbox.UI.RenderState")
final extern class RenderState {
    /** Position of the panel on the X axis. This can be a negative value! */
    var X(default,set):Single;

    private inline function set_X(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.X = {1}", this, __value);
    }

    /** Position of the panel on the Y axis. This can be a negative value! */
    var Y(default,set):Single;

    private inline function set_Y(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Y = {1}", this, __value);
    }

    /** Width of the panel. */
    var Width(default,set):Single;

    private inline function set_Width(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Width = {1}", this, __value);
    }

    /** Height of the panel. */
    var Height(default,set):Single;

    private inline function set_Height(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Height = {1}", this, __value);
    }

}
