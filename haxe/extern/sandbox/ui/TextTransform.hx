package sandbox.ui;

/** Possible values for text-transform CSS property. */
@:native("Sandbox.UI.TextTransform")
extern enum abstract TextTransform(Int) {
    var None;
    var Capitalize;
    var Uppercase;
    var Lowercase;
}
