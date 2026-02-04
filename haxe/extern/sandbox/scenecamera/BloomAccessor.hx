package sandbox.scenecamera;

@:native("Sandbox.SceneCamera.BloomAccessor")
extern class BloomAccessor {
    /** Enable or disable exposure. */
    var Enabled(default,default):Bool;
    var Mode(default,default):sandbox.scenecamera.bloomaccessor.BloomMode;
    var Strength(default,default):Single;
    var Threshold(default,default):Single;
    var ThresholdWidth(default,default):Single;
    var SkyboxStrength(default,default):Single;
    var BlurWeight0(default,default):Single;
    var BlurWeight1(default,default):Single;
    var BlurWeight2(default,default):Single;
    var BlurWeight3(default,default):Single;
    var BlurWeight4(default,default):Single;
    var BlurTint0(default,default):Color;
    var BlurTint1(default,default):Color;
    var BlurTint2(default,default):Color;
    var BlurTint3(default,default):Color;
    var BlurTint4(default,default):Color;
}
