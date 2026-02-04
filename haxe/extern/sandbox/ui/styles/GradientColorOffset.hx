package sandbox.ui.styles;

@:native("Sandbox.UI.Styles.GradientColorOffset")
final extern class GradientColorOffset {
    var color(default,set):Color;

    private inline function set_color(value:Color):Color {
        var __value:Color = cast value;
        return untyped __cs__("{0}.color = {1}", this, __value);
    }

    var offset(default,set):Null<Single>;

    private inline function set_offset(value:Null<Single>):Null<Single> {
        var __value:Null<Single> = cast value;
        return untyped __cs__("{0}.offset = {1}", this, __value);
    }

    function GetHashCode():Int;
}
