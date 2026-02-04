package sandbox.ui;

/** Possible values for the "overflow" CSS rule, dictating what to do with content that is outside of a panels bounds. */
@:native("Sandbox.UI.OverflowMode")
extern enum abstract OverflowMode(Int) {
    var Visible;
    var Hidden;
    var Scroll;
}
