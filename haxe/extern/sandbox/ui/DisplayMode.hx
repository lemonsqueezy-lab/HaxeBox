package sandbox.ui;

/** Possible values for display CSS property. */
@:native("Sandbox.UI.DisplayMode")
extern enum abstract DisplayMode(Int) {
    var Flex;
    var None;
    var Contents;
}
