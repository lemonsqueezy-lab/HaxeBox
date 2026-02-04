package sandbox.ui;

/** State of fill setting of border-image-slice (border-image) CSS property. */
@:native("Sandbox.UI.BorderImageFill")
extern enum abstract BorderImageFill(Int) {
    var Unfilled;
    var Filled;
}
