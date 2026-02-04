package sandbox.ui;

/** Possible values for flex-wrap CSS property. */
@:native("Sandbox.UI.Wrap")
extern enum abstract Wrap(Int) {
    var NoWrap;
    var Wrap;
    var WrapReverse;
}
