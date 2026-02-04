package sandbox.ui;

@:native("Sandbox.UI.LayoutCascade")
final extern class LayoutCascade {
    var SelectorChanged(default,set):Bool;

    private inline function set_SelectorChanged(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.SelectorChanged = {1}", this, __value);
    }

    var ParentChanged(default,set):Bool;

    private inline function set_ParentChanged(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.ParentChanged = {1}", this, __value);
    }

    var SkipTransitions(default,set):Bool;

    private inline function set_SkipTransitions(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.SkipTransitions = {1}", this, __value);
    }

    var ParentStyles(default,set):sandbox.ui.Styles;

    private inline function set_ParentStyles(value:sandbox.ui.Styles):sandbox.ui.Styles {
        var __value:sandbox.ui.Styles = cast value;
        return untyped __cs__("{0}.ParentStyles = {1}", this, __value);
    }

    var Scale(default,set):Single;

    private inline function set_Scale(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Scale = {1}", this, __value);
    }

}
