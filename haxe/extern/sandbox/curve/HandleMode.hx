package sandbox.curve;

/** Describes how the line should behave when entering/leaving a frame */
@:native("Sandbox.Curve.HandleMode")
extern enum abstract HandleMode(Int) {
    var Mirrored;
    var Split;
    var Flat;
    var Linear;
    var Stepped;
}
