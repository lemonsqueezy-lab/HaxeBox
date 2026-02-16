package sandbox.ui;

/** A generic panel that draws an SVG scaled to size */
@:native("Sandbox.UI.SvgPanel")
extern class SvgPanel extends sandbox.ui.Panel {
    function new():Void;
    /** Content path to the SVG file */
    var Src(default,default):String;
    /** Optional color to draw the SVG with */
    var Color(default,default):String;
    function FinalLayout(offset:Vector2):Void;
}
