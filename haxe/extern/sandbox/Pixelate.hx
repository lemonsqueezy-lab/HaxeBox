package sandbox;

/** Applies a pixelate effect to the camera */
@:native("Sandbox.Pixelate")
final extern class Pixelate extends sandbox.BasePostProcess<sandbox.Pixelate> {
    function new():Void;
    var Scale(default,default):Single;
    function Render():Void;
}
