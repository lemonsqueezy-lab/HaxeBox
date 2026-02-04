package sandbox;

/** The visibility state of the mouse cursor. */
@:native("Sandbox.MouseVisibility")
extern enum abstract MouseVisibility(Int) {
    var Visible;
    var Auto;
    var Hidden;
}
