package sandbox.utility.svg;

/** Controls arc direction in . */
@:native("Sandbox.Utility.Svg.PathDirection")
extern enum abstract PathDirection(Int) {
    var Clockwise;
    var CounterClockwise;
}
