package sandbox;

/** Applies a motion blur effect to the camera */
@:native("Sandbox.MotionBlur")
final extern class MotionBlur extends sandbox.BasePostProcess<sandbox.MotionBlur> {
    function new():Void;
    var Scale(default,default):Single;
    function Render():Void;
}
