package sandbox;

/** Applies a bloom effect to the camera */
@:native("Sandbox.Bloom")
extern class Bloom extends sandbox.BasePostProcess<sandbox.Bloom> {
    function new():Void;
    var Mode(default,default):sandbox.scenecamera.bloomaccessor.BloomMode;
    var Strength(default,default):Single;
    var Threshold(default,default):Single;
    var Gamma(default,default):Single;
    var Tint(default,default):Color;
    var Filter(default,default):sandbox.bloom.FilterMode;
    function Render():Void;
}
