package sandbox;

/** State of mouse buttons being pressed or not. */
@:native("Sandbox.MouseButtons")
extern enum abstract MouseButtons(Int) {
    var None;
    var Left;
    var Right;
    var Middle;
    var Back;
    var Forward;
}
