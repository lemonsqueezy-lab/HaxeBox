package sandbox.ui;

/** Possible values for text-overflow CSS property. */
@:native("Sandbox.UI.TextOverflow")
extern enum abstract TextOverflow(Int) {
    var None;
    var Ellipsis;
    var Clip;
}
