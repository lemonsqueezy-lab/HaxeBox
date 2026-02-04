package sandbox.ui;

/** Possible values for position CSS property. */
@:native("Sandbox.UI.PositionMode")
extern enum abstract PositionMode(Int) {
    var Static;
    var Relative;
    var Absolute;
}
