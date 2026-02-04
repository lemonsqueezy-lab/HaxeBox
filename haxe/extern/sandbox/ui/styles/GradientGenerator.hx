package sandbox.ui.styles;

@:native("Sandbox.UI.Styles.GradientGenerator")
final extern class GradientGenerator {
    var from(default,set):sandbox.ui.styles.GradientColorOffset;

    private inline function set_from(value:sandbox.ui.styles.GradientColorOffset):sandbox.ui.styles.GradientColorOffset {
        var __value:sandbox.ui.styles.GradientColorOffset = cast value;
        return untyped __cs__("{0}.from = {1}", this, __value);
    }

    var to(default,set):sandbox.ui.styles.GradientColorOffset;

    private inline function set_to(value:sandbox.ui.styles.GradientColorOffset):sandbox.ui.styles.GradientColorOffset {
        var __value:sandbox.ui.styles.GradientColorOffset = cast value;
        return untyped __cs__("{0}.to = {1}", this, __value);
    }

}
