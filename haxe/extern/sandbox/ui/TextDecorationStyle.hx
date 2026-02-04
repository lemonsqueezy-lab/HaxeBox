package sandbox.ui;

/** Possible values for text-decoration-style CSS property. */
@:native("Sandbox.UI.TextDecorationStyle")
extern enum abstract TextDecorationStyle(Int) {
    var Solid;
    var Double;
    var Dotted;
    var Dashed;
    var Wavy;
}
