package sandbox.ui;

/** Possible values for align-items CSS property. */
@:native("Sandbox.UI.Align")
extern enum abstract Align(Int) {
    var Auto;
    var FlexStart;
    var Center;
    var FlexEnd;
    var Stretch;
    var Baseline;
    var SpaceBetween;
    var SpaceAround;
    var SpaceEvenly;
}
