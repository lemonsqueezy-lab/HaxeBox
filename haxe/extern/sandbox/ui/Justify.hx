package sandbox.ui;

/** Possible values for justify-content CSS property. */
@:native("Sandbox.UI.Justify")
extern enum abstract Justify(Int) {
    var FlexStart;
    var Center;
    var FlexEnd;
    var SpaceBetween;
    var SpaceAround;
    var SpaceEvenly;
}
