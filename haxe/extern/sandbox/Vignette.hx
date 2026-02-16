package sandbox;

/** Applies a vignette to the camera */
@:native("Sandbox.Vignette")
final extern class Vignette extends sandbox.BasePostProcess<sandbox.Vignette> {
    function new():Void;
    /** The color of the vignette or the "border" */
    var Color(default,default):Color;
    /** How strong the vignette is. This is a value between 0 -> 1 */
    var Intensity(default,default):Single;
    /** How much fall off or how blurry the vignette is */
    var Smoothness(default,default):Single;
    /** How circular or round the vignette is */
    var Roundness(default,default):Single;
    /** The center of the vignette in relation to UV space. This means a value of {0.5, 0.5} is the center of the screen */
    var Center(default,default):Vector2;
    function Render():Void;
}
