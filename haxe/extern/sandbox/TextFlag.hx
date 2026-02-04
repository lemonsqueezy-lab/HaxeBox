package sandbox;

/** Flags dictating position of text (and other elements). Default alignment on each axis is Top, Left. Values for each axis can be combined into a single value, conflicting values have undefined behavior. */
@:native("Sandbox.TextFlag")
extern enum abstract TextFlag(Int) {
    var None;
    var Left;
    var Right;
    var CenterHorizontally;
    var Justify;
    var Absolute;
    var Top;
    var Bottom;
    var CenterVertically;
    var LeftTop;
    var LeftCenter;
    var LeftBottom;
    var CenterTop;
    var Center;
    var CenterBottom;
    var RightTop;
    var RightCenter;
    var RightBottom;
    var SingleLine;
    var DontClip;
    var WordWrap;
    var WrapAnywhere;
}
