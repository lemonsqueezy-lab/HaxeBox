package sandbox.ui;

/** Possible values for background-repeat CSS property. */
@:native("Sandbox.UI.BackgroundRepeat")
extern enum abstract BackgroundRepeat(Int) {
    var Repeat;
    var RepeatX;
    var RepeatY;
    var NoRepeat;
    var Clamp;
}
