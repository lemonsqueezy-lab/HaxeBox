package sandbox.utility.svg;

/** A shape in a , described as a vector path. */
@:native("Sandbox.Utility.Svg.SvgPath")
extern class SvgPath {
    /** How to determine which sections of the path are filled. */
    var FillType(default,never):sandbox.utility.svg.PathFillType;
    /** Description of how the path is constructed out of basic elements. */
    var Commands(default,never):system.collections.generic.IReadOnlyList<sandbox.utility.svg.PathCommand>;
    /** If true, this path has no commands. */
    var IsEmpty(default,never):Bool;
    /** Enclosing bounding box for this path. */
    var Bounds(default,never):sandbox.Rect;
    /** Optional outline color for this path. */
    var StrokeColor(default,never):Null<Color>;
    /** Optional fill color for this path. */
    var FillColor(default,never):Null<Color>;
}
