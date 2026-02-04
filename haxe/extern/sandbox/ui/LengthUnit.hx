package sandbox.ui;

/** Possible units for various CSS properties that require length, used by struct. */
@:native("Sandbox.UI.LengthUnit")
extern enum abstract LengthUnit(Int) {
    var Auto;
    var Pixels;
    var Percentage;
    var ViewHeight;
    var ViewWidth;
    var ViewMin;
    var ViewMax;
    var Start;
    var Cover;
    var Contain;
    var End;
    var Center;
    var Undefined;
    var Expression;
    var RootEm;
    var Em;
}
