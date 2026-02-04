package sandbox.ui;

/** Possible values for font-smooth CSS property. */
@:native("Sandbox.UI.FontSmooth")
extern enum abstract FontSmooth(Int) {
    var Auto;
    var Never;
    var Always;
}
