package sandbox.spline;

/** Describes how the spline should behave when entering/leaving a point. */
@:native("Sandbox.Spline.HandleMode")
extern enum abstract HandleMode(Int) {
    var Auto;
    var Linear;
    var Mirrored;
    var Split;
}
