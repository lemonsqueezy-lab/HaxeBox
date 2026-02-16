package sandbox;

/** Applies a sharpen effect to the camera */
@:native("Sandbox.Sharpen")
final extern class Sharpen extends sandbox.BasePostProcess<sandbox.Sharpen> {
    function new():Void;
    var Scale(default,default):Single;
    var TexelSize(default,default):Single;
    function Render():Void;
}
