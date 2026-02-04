package sandbox.ui;

/** Possible values for mask-mode CSS property. */
@:native("Sandbox.UI.MaskMode")
extern enum abstract MaskMode(Int) {
    var MatchSource;
    var Alpha;
    var Luminance;
}
