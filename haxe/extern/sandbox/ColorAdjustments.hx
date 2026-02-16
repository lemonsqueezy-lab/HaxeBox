package sandbox;

/** Applies color adjustments to the camera. */
@:native("Sandbox.ColorAdjustments")
final extern class ColorAdjustments extends sandbox.BasePostProcess<sandbox.ColorAdjustments> {
    function new():Void;
    var Blend(default,default):Single;
    var Saturation(default,default):Single;
    var HueRotate(default,default):Single;
    var Brightness(default,default):Single;
    var Contrast(default,default):Single;
    function Render():Void;
}
