package sandbox;

/** This component should be added to stuff you want to be outlined. You will also need to add the Highlight component to the camera you want to render the outlines. */
@:native("Sandbox.HighlightOutline")
extern class HighlightOutline extends sandbox.Component {
    function new():Void;
    /** If defined, the glow will use this material rather than a generated one. */
    var Material(default,default):sandbox.Material;
    /** The colour of the glow outline */
    var Color(default,default):Color;
    /** The colour of the glow when the mesh is obscured by something closer. */
    var ObscuredColor(default,default):Color;
    /** Color of the inside of the glow */
    var InsideColor(default,default):Color;
    /** Color of the inside of the glow when the mesh is obscured by something closer. */
    var InsideObscuredColor(default,default):Color;
    /** The width of the line of the glow */
    var Width(default,default):Single;
    /** Specify targets of the outline manually */
    var OverrideTargets(default,default):Bool;
    /** Specify targets of the outline manually */
    var Targets(default,default):system.collections.generic.List<sandbox.Renderer>;
    /** Get a list of targets that we want to draw the outline around */
    function GetOutlineTargets():system.collections.generic.IEnumerable<sandbox.Renderer>;
}
