package sandbox.ui;

/** Possible values for white-space CSS property. */
@:native("Sandbox.UI.WhiteSpace")
extern enum abstract WhiteSpace(Int) {
    var Normal;
    var NoWrap;
    var PreLine;
    var Pre;
}
