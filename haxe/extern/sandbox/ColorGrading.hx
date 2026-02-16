package sandbox;

/** Applies color grading to the camera */
@:native("Sandbox.ColorGrading")
final extern class ColorGrading extends sandbox.BasePostProcess<sandbox.ColorGrading> {
    function new():Void;
    var GradingMethod(default,default):sandbox.colorgrading.GradingType;
    var ColorTempK(default,default):Single;
    var BlendFactor(default,default):Single;
    var LookupTexture(default,default):sandbox.Texture;
    var ColorSpace(default,default):sandbox.colorgrading.ColorSpaceEnum;
    var RedCurve(default,default):sandbox.Curve;
    var GreenCurve(default,default):sandbox.Curve;
    var BlueCurve(default,default):sandbox.Curve;
    var HueCurve(default,default):sandbox.Curve;
    var SaturationCurve(default,default):sandbox.Curve;
    var ValueCurve(default,default):sandbox.Curve;
    function Render():Void;
}
