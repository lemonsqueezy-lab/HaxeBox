package sandbox;

/** Applies a blur effect to the camera. */
@:native("Sandbox.Blur")
final extern class Blur extends sandbox.BasePostProcess<sandbox.Blur> {
    function new():Void;
    var Size(default,default):Single;
    function Render():Void;
}
