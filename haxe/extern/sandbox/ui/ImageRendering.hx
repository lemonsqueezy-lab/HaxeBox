package sandbox.ui;

/** Possible values for image-rendering CSS property. */
@:native("Sandbox.UI.ImageRendering")
extern enum abstract ImageRendering(Int) {
    var Anisotropic;
    var Bilinear;
    var Trilinear;
    var Point;
}
