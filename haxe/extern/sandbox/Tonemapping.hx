package sandbox;

/** Applies a tonemapping effect to the camera. */
@:native("Sandbox.Tonemapping")
extern class Tonemapping extends sandbox.BasePostProcess<sandbox.Tonemapping> {
    function new():Void;
    /** Which tonemapping algorithm to use for color grading. */
    var Mode(default,default):sandbox.tonemapping.TonemappingMode;
    var ExposureMethod(default,default):sandbox.tonemapping.ExposureColorSpaceEnum;
    var AutoExposureEnabled(default,default):Bool;
    var MinimumExposure(default,default):Single;
    var MaximumExposure(default,default):Single;
    var ExposureCompensation(default,default):Single;
    var Rate(default,default):Single;
    function Render():Void;
}
