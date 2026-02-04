package sandbox.ui;

/** Possible values for text-decoration CSS property. */
@:native("Sandbox.UI.TextDecoration")
extern enum abstract TextDecoration(Int) {
    var None;
    var Underline;
    var LineThrough;
    var Overline;
}
