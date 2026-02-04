package sandbox.utility.svg;

/** How to determine which sections of the path are filled. */
@:native("Sandbox.Utility.Svg.PathFillType")
extern enum abstract PathFillType(Int) {
    var Winding;
    var EvenOdd;
}
