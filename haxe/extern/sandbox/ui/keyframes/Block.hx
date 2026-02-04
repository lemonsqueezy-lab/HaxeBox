package sandbox.ui.keyframes;

/** A keyframe within the animation. */
@:native("Sandbox.UI.KeyFrames.Block")
extern class Block {
    function new():Void;
    /** The position of the keyframe within the overall animation. 0 to 1, where 0 is the start, and 1 is the end of the animation. */
    var Interval(default,default):Single;
    /** The styles that should be applied at this position in the animation. */
    var Styles(default,default):sandbox.ui.Styles;
}
