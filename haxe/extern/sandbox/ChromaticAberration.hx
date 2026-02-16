package sandbox;

/** Applies a chromatic aberration effect to the camera */
@:native("Sandbox.ChromaticAberration")
final extern class ChromaticAberration extends sandbox.BasePostProcess<sandbox.ChromaticAberration> {
    function new():Void;
    /** Enable chromatic aberration */
    var Scale(default,default):Single;
    /** The pixel offset for each color channel. These values should be very small as it's in UV space. (0.004 for example) X = Red Y = Green Z = Blue */
    var Offset(default,default):Vector3;
    function Render():Void;
}
